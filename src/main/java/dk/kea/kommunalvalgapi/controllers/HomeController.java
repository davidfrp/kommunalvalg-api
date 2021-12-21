package dk.kea.kommunalvalgapi.controllers;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import javax.websocket.server.PathParam;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Controller
@CrossOrigin(origins = "*")
public class HomeController {

    @GetMapping("/test")
    public ResponseEntity<?> test(@PathParam("id") long id,
                                  @PathParam("data") String data) {

        Pattern pattern = Pattern.compile("\\s*(\\d+)\\.*(\\d+)\\s*");
        Matcher m = pattern.matcher(data.trim());

        if (m.find()) {
            String output = m.replaceAll(f -> "', $1$2, " + id + "),\n\t('");
            output = "INSERT INTO candidates (name, amount_of_votes, party_id) VALUES\n\t('" + output;
            output = output.substring(0, output.length() - 5) + ";";
            System.out.println(output);

            return ResponseEntity.ok()
                    .header("Content-Type", "text/plain; charset=UTF-8")
                    .body(output);
        }

        return ResponseEntity.ok(Map.of(
                "error", "No match."
        ));
    }
}
