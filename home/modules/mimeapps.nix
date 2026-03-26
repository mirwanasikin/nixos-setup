{ ... }:

{
    xdg.mimeApps = {
        enable = true;
        defaultApplications = {
            "video/mp4"                 = "mpv.desktop";
            "video/mkv"                 = "mpv.desktop";
            "video/webm"                = "mpv.desktop";
            "video/x-matroska"          = "mpv.desktop";
            "video/avi"                 = "mpv.desktop";
            "image/png"                 = "imv.desktop";
            "image/jpeg"                = "imv.desktop";
            "image/gif"                 = "imv.desktop";
            "image/webp"                = "imv.desktop";
            "image/svg+xml"             = "imv.desktop";
            "text/html"                 = "google-chrome.desktop";
            "applications/xhtml-xml"    = "google-chrome.desktop";
            "x-scheme-handler/http"     = "google-chrome.desktop";
            "x-scheme-handler/https"    = "google-chrome.desktop";
        };
    };
}
