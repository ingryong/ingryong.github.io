<html>
<?
    $tomail = "bbgod2@gmail.com";
    $mailheaders = "From: $name <$email>\r\n ";
    $result = mail($to, $subject, $message, $headers);
?>
</html>