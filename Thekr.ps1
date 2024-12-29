while ($true) {
    # Load Windows.UI.Notifications namespace
    [Windows.UI.Notifications.ToastNotificationManager, Windows.UI.Notifications, ContentType = WindowsRuntime]
    
    # Get the XML template for the toast notification
    $template = [Windows.UI.Notifications.ToastNotificationManager]::GetTemplateContent([Windows.UI.Notifications.ToastTemplateType]::ToastText02)
    
    # Set the notification title and message
    $texts = $template.GetElementsByTagName("text")
    $texts.Item(0).InnerText = "Thekr" # Title
    $texts.Item(1).InnerText = "Sali Ala Alnabi" # Message
    
    # Create and show the toast notification
    $toast = [Windows.UI.Notifications.ToastNotification]::new($template)
    $notifier = [Windows.UI.Notifications.ToastNotificationManager]::CreateToastNotifier("Notification Script")
    $notifier.Show($toast)
    
    # Wait for 5 minutes
    Start-Sleep -Seconds 300
}
