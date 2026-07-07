return {
    'skardyy/neo-img',
    lazy = true,
    cmd = "NeoImg",
    build = ":NeoImg Install",
    config = function()
        require('neo-img').setup({
            supported_extensions = {
                png = true,
                jpg = true,
                jpeg = true,
                tiff = true,
                tif = true,
                svg = true,
                webp = true,
                bmp = true,
                gif = true,
                docx = true,
                xlsx = true,
                pdf = true,
                pptx = true,
                odg = true,
                odp = true,
                ods = true,
                odt = true
            },

            size = "80%",
            center = true,

            auto_open = false,
            oil_preview = true,
            backend = "auto",
            resizeMode = "Fit",
            offset = "2x3",
            ttyimg = "local",
        })
    end,
}
