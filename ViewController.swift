
import UIKit

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var demoSvg: UIImageView!
    
    private let svgView = SVGPathView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let svgString = """
        <svg
            xmlns="http://www.w3.org/2000/svg" width="250" height="50" viewBox="0,0,250,50">
            <path id="Color" fill="#333" d="M40.55 25.84L40.38 25.67Q42.86 26.51 44.24 28.07L44.32 28.15L44.39 28.22Q45.64 29.65 45.64 32.57L45.75 32.68L45.69 32.62Q45.75 35.73 44.29 37.75L44.27 37.72L44.24 37.69Q42.67 39.60 40.33 40.56L40.44 40.67L40.42 40.65Q38.06 41.59 35.34 41.59L35.38 41.63L35.34 41.59Q32.38 41.51 30.06 40.45L30.06 40.45L30.17 40.56Q27.90 39.55 26.58 37.59L26.58 37.59L26.57 37.58Q25.17 35.54 25.17 32.90L25.25 32.98L25.26 32.99Q25.12 29.98 26.64 28.52L26.74 28.61L26.74 28.61Q28.32 27.21 31.04 26.49L30.92 26.37L31.03 26.48Q28.87 25.64 27.75 24.36L27.73 24.34L27.89 24.50Q26.64 23.09 26.64 20.69L26.76 20.81L26.72 20.77Q26.72 18.37 27.88 16.59L27.85 16.56L27.90 16.61Q28.90 14.67 30.90 13.69L31.01 13.80L31.03 13.82Q32.90 12.71 35.38 12.71L35.41 12.75L35.51 12.85Q37.93 12.78 39.93 13.74L39.90 13.71L39.99 13.80Q41.88 14.65 43.02 16.39L43.16 16.53L43.11 16.48Q44.25 18.22 44.25 20.46L44.14 20.35L44.20 20.42Q44.14 22.43 43.16 23.67L43.24 23.75L43.18 23.69Q42.25 24.98 40.45 25.74L40.38 25.67ZM30.59 20.32L30.67 20.40Q30.59 21.80 31.39 22.68L31.45 22.74L31.54 22.84Q32.31 23.68 33.55 24.10L33.49 24.04L33.44 23.99Q34.75 24.48 36.79 24.88L36.87 24.96L36.82 24.91Q38.38 24.23 39.28 23.23L39.37 23.32L39.25 23.20Q40.17 22.22 40.17 20.50L40.32 20.65L40.14 20.47Q40.20 18.45 38.88 17.21L38.99 17.32L38.85 17.18Q37.49 15.91 35.37 15.91L35.42 15.95L35.38 15.91Q33.40 16.01 32.04 17.21L32.02 17.19L32.11 17.28Q30.72 18.45 30.72 20.45L30.66 20.39ZM35.35 38.32L35.46 38.44Q38.02 38.43 39.66 37.05L39.72 37.11L39.70 37.09Q41.21 35.59 41.21 32.91L41.27 32.97L41.29 32.98Q41.30 31.15 40.48 30.05L40.55 30.12L40.44 30.01Q39.60 28.89 38.32 28.33L38.31 28.33L38.26 28.27Q37.00 27.73 35.04 27.33L35.02 27.32L35.11 27.41Q32.56 28.25 31.12 29.47L31.02 29.37L31.03 29.38Q29.59 30.60 29.59 33.04L29.56 33.02L29.62 33.07Q29.56 35.57 31.18 36.97L31.11 36.90L31.23 37.02Q32.75 38.32 35.35 38.32L35.41 38.38Z"/>
            <path id="Color_1" fill="#444" d="M70.82 41.56L70.83 41.57Q66.48 41.54 63.18 39.76L63.27 39.86L63.33 39.92Q59.93 38.03 58.13 34.75L58.20 34.82L58.14 34.77Q56.31 31.46 56.31 27.18L56.39 27.26L56.33 27.19Q56.31 22.89 58.11 19.61L58.19 19.69L58.07 19.58Q59.91 16.33 63.21 14.55L63.15 14.49L63.29 14.63Q66.54 12.80 70.86 12.80L70.80 12.74L70.81 12.76Q75.28 12.90 78.58 14.68L78.40 14.50L78.57 14.68Q81.76 16.34 83.56 19.62L83.65 19.72L83.52 19.58Q85.44 22.98 85.44 27.26L85.37 27.20L85.33 27.16Q85.34 31.44 83.54 34.72L83.52 34.70L83.52 34.70Q81.78 38.05 78.48 39.83L78.39 39.73L78.47 39.82Q75.16 41.59 70.84 41.59L70.95 41.69ZM70.95 38.50L70.91 38.45Q73.69 38.36 75.89 36.98L75.85 36.94L75.90 36.99Q78.10 35.61 79.32 33.07L79.43 33.17L79.42 33.17Q80.50 30.49 80.50 27.13L80.63 27.25L80.62 27.24Q80.57 23.83 79.35 21.29L79.33 21.27L79.32 21.27Q78.20 18.82 76.00 17.44L76.03 17.47L75.95 17.39Q73.66 15.93 70.78 15.93L70.89 16.03L70.76 15.90Q68.00 16.02 65.80 17.40L65.77 17.38L65.70 17.30Q63.56 18.74 62.34 21.28L62.38 21.33L62.38 21.33Q61.17 23.88 61.17 27.24L61.17 27.23L61.10 27.17Q61.17 30.59 62.39 33.13L62.41 33.16L62.33 33.07Q63.64 35.70 65.84 37.08L65.82 37.06L65.83 37.08Q67.94 38.36 70.82 38.36L70.89 38.44Z"/>
            <path id="Color_2" fill="#111" d="M106.22 12.77L106.19 12.75Q111.64 12.87 114.00 16.23L113.93 16.16L113.97 16.20Q116.33 19.56 116.33 26.88L116.38 26.94L116.32 26.88Q116.35 34.55 113.83 38.09L113.85 38.10L113.82 38.08Q111.35 41.66 106.03 41.66L105.86 41.49L105.88 41.52Q102.13 41.61 99.77 39.99L99.75 39.96L99.78 40.00Q97.36 38.32 97.36 35.52L97.29 35.44L97.34 35.49Q97.43 33.98 98.21 33.08L98.08 32.96L98.18 33.05Q99.01 32.20 100.33 32.20L100.24 32.11L100.21 32.09Q101.37 32.13 102.07 32.81L102.04 32.78L102.13 32.86Q102.69 33.40 102.69 34.52L102.70 34.54L102.68 34.52Q102.75 35.43 102.33 36.03L102.41 36.11L102.28 35.98Q101.87 36.58 101.07 36.86L101.08 36.87L101.09 36.88Q101.72 37.83 102.80 38.33L102.68 38.22L102.69 38.23Q103.85 38.80 105.45 38.80L105.44 38.80L105.42 38.78Q108.60 38.75 110.28 36.31L110.29 36.33L110.29 36.33Q111.95 33.87 112.23 27.79L112.32 27.87L112.15 27.70Q110.29 31.25 105.41 31.25L105.41 31.24L105.40 31.24Q101.12 31.16 98.68 28.68L98.72 28.71L98.75 28.75Q96.27 26.22 96.27 22.02L96.26 22.01L96.34 22.09Q96.30 17.78 98.88 15.30L98.79 15.21L98.90 15.32Q101.35 12.70 106.15 12.70L106.29 12.85ZM106.34 27.93L106.43 28.02Q109.06 28.02 110.48 26.46L110.38 26.36L110.55 26.53Q111.93 24.92 111.93 22.44L111.97 22.49L111.91 22.42Q111.86 19.49 110.20 17.73L110.20 17.73L110.15 17.68Q108.54 15.98 105.98 15.98L105.95 15.95L105.95 15.94Q103.64 16.08 102.20 17.72L102.08 17.60L102.18 17.69Q100.76 19.36 100.76 22.04L100.72 21.99L100.60 21.88Q100.66 24.61 102.14 26.29L102.23 26.39L102.25 26.41Q103.64 27.99 106.40 27.99L106.42 28.01Z"/>
            <path id="Color_3" fill="#222" d="M153.40 38.04L157.57 38.02L157.49 41.13L143.80 41.25L143.72 37.97L148.17 38.02L146.24 32.61L135.69 32.61L133.71 37.99L137.33 38.01L137.29 41.17L125.82 41.15L125.85 37.98L129.68 37.97L139.40 13.24L143.69 13.21L153.42 38.06ZM136.82 29.39L145.00 29.33L142.59 22.60L142.35 21.63L142.34 21.62Q141.59 19.55 140.91 17.95L140.83 17.87L140.90 17.95Q140.42 19.39 139.90 21.03L139.95 21.07L139.33 22.73L136.77 29.34Z"/>
            <path id="Color_4" fill="#333" d="M185.02 26.32L185.05 26.35Q187.41 27.15 188.47 28.73L188.54 28.79L188.48 28.74Q189.55 30.33 189.55 32.65L189.50 32.59L189.55 32.64Q189.50 36.56 186.74 38.84L186.89 38.98L186.82 38.91Q184.16 41.30 179.20 41.30L179.09 41.19L164.65 41.15L164.73 38.02L169.17 38.02L169.16 16.41L164.72 16.41L164.74 13.24L178.69 13.19L178.70 13.20Q183.30 13.19 185.84 15.25L185.85 15.27L185.92 15.34Q188.43 17.37 188.43 21.01L188.34 20.92L188.44 21.02Q188.43 22.89 187.65 24.17L187.56 24.08L187.67 24.19Q186.82 25.40 184.98 26.28L185.02 26.32ZM178.72 16.42L173.49 16.34L173.63 24.89L178.34 24.83L178.31 24.81Q181.16 24.82 182.38 23.94L182.34 23.89L182.41 23.97Q183.65 23.11 183.65 21.11L183.57 21.03L183.60 21.06Q183.61 18.90 182.33 17.66L182.29 17.63L182.35 17.69Q180.96 16.33 178.64 16.33L178.65 16.35ZM179.04 37.93L179.08 37.97Q181.76 37.98 183.26 36.54L183.24 36.52L183.28 36.56Q184.81 35.15 184.81 32.59L184.73 32.51L184.85 32.62Q184.73 30.07 183.21 29.01L183.26 29.05L183.35 29.15Q181.75 28.01 178.31 28.01L178.39 28.09L173.63 28.09L173.64 38.10L179.10 38.00Z"/>
            <path id="Color_5" fill="#222" d="M221.50 33.17L223.06 33.12L223.06 41.21L202.11 41.22L202.08 38.43L202.18 38.53Q206.73 35.04 209.83 32.48L209.92 32.57L209.82 32.47Q212.98 29.97 215.14 27.05L215.19 27.10L215.23 27.14Q217.32 24.14 217.32 21.34L217.22 21.25L217.22 21.25Q217.28 18.91 215.68 17.47L215.69 17.48L215.77 17.55Q214.02 15.97 211.38 15.97L211.42 16.01L211.46 16.05Q207.88 16.11 206.48 19.11L206.33 18.96L206.33 18.96Q208.07 19.62 208.07 21.38L208.14 21.45L208.19 21.49Q208.05 22.60 207.21 23.40L207.33 23.52L207.33 23.51Q206.41 24.24 205.05 24.24L205.10 24.29L205.00 24.19Q203.79 24.38 203.01 23.50L202.95 23.43L202.83 23.32Q202.04 22.43 202.04 20.71L202.08 20.75L202.07 20.73Q202.18 18.73 203.34 16.91L203.19 16.76L203.37 16.94Q204.49 15.08 206.67 13.98L206.66 13.97L206.65 13.96Q208.78 12.81 211.78 12.81L211.75 12.78L211.75 12.77Q214.67 12.86 216.93 13.88L216.92 13.87L216.89 13.84Q219.17 14.88 220.43 16.76L220.35 16.68L220.46 16.79Q221.74 18.69 221.74 21.13L221.75 21.14L221.72 21.11Q221.69 25.24 218.05 29.40L218.02 29.37L218.05 29.40Q214.49 33.64 208.09 37.60L208.01 37.52L208.11 37.70L217.26 37.69L217.24 37.66Q218.99 37.69 219.81 37.29L219.63 37.11L219.69 37.18Q220.63 36.89 220.97 35.99L220.91 35.94L220.96 35.99Q221.15 34.94 221.39 33.06L221.54 33.21Z"/>
        </svg>
        """
//        svgView.loadSVGFromData(data: svgString)
        Task {
            await svgView.loadSVGFromURL(urlString: "https://raw.githubusercontent.com/nitish3214/Pre_placement-training-module-2023/refs/heads/main/change_color.svg")
            let colorPrefixIDs = svgView.getElementIDsWithColorPrefix()
            for id in colorPrefixIDs {
                svgView.setColor(.red, forElementWithID: id)
            }
            view.addSubview(svgView)
            svgView.frame = demoSvg.bounds
            if let renderedImage = svgView.renderAsImage(desiredSize: demoSvg.bounds.size) {
                demoSvg.image = renderedImage
            }
            svgView.isHidden = true
            demoSvg.contentMode = .scaleAspectFit
        }
        
//        svgView.loadSVGFromBundle(named: "change_color")
        
//        let colorPrefixIDs = svgView.getElementIDsWithColorPrefix()
//        for id in colorPrefixIDs {
//            svgView.setColor(.blue, forElementWithID: id)
//        }
//        view.addSubview(svgView)
//        svgView.frame = demoSvg.bounds
//        if let renderedImage = svgView.renderAsImage(desiredSize: demoSvg.bounds.size) {
//            demoSvg.image = renderedImage
//        }
//        svgView.isHidden = true
//        demoSvg.contentMode = .scaleAspectFit
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        svgView.frame = demoSvg.bounds
    }
}


extension UIColor {
    convenience init(svgColor: String) {
        // Handle hex colors
        if svgColor.hasPrefix("#") {
            let hex = svgColor.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
            var int = UInt64()
            Scanner(string: hex).scanHexInt64(&int)
            let a, r, g, b: UInt64
            switch hex.count {
            case 3: // RGB (12-bit)
                (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
            case 6: // RGB (24-bit)
                (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
            case 8: // ARGB (32-bit)
                (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
            default:
                (a, r, g, b) = (255, 0, 0, 0)
            }
            self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: CGFloat(a) / 255)
            return
        }

        // Handle rgb/rgba colors
        if svgColor.hasPrefix("rgb(") || svgColor.hasPrefix("rgba(") {
            let cleanString = svgColor.replacingOccurrences(of: "rgba(", with: "")
                .replacingOccurrences(of: "rgb(", with: "")
                .replacingOccurrences(of: ")", with: "")
            let components = cleanString.components(separatedBy: ",")
            if components.count >= 3 {
                let r = CGFloat((Float(components[0]) ?? 0) / 255.0)
                let g = CGFloat((Float(components[1]) ?? 0) / 255.0)
                let b = CGFloat((Float(components[2]) ?? 0) / 255.0)
                let a = components.count > 3 ? CGFloat((Float(components[3]) ?? 1.0)) : 1.0
                self.init(red: r, green: g, blue: b, alpha: a)
                return
            }
        }

        // Handle named colors
        switch svgColor.lowercased().trimmingCharacters(in: .whitespaces) {
        case "black": self.init(red: 0, green: 0, blue: 0, alpha: 1)
        case "white": self.init(red: 1, green: 1, blue: 1, alpha: 1)
        case "red": self.init(red: 1, green: 0, blue: 0, alpha: 1)
        case "lime": self.init(red: 0, green: 1, blue: 0, alpha: 1)
        case "green": self.init(red: 0, green: 0.5, blue: 0, alpha: 1)
        case "blue": self.init(red: 0, green: 0, blue: 1, alpha: 1)
        case "yellow": self.init(red: 1, green: 1, blue: 0, alpha: 1)
        case "cyan", "aqua": self.init(red: 0, green: 1, blue: 1, alpha: 1)
        case "magenta", "fuchsia": self.init(red: 1, green: 0, blue: 1, alpha: 1)
        case "silver": self.init(red: 0.75, green: 0.75, blue: 0.75, alpha: 1)
        case "gray": self.init(red: 0.5, green: 0.5, blue: 0.5, alpha: 1)
        case "maroon": self.init(red: 0.5, green: 0, blue: 0, alpha: 1)
        case "olive": self.init(red: 0.5, green: 0.5, blue: 0, alpha: 1)
        case "purple": self.init(red: 0.5, green: 0, blue: 0.5, alpha: 1)
        case "teal": self.init(red: 0, green: 0.5, blue: 0.5, alpha: 1)
        case "navy": self.init(red: 0, green: 0, blue: 0.5, alpha: 1)
        default: self.init(red: 0, green: 0, blue: 0, alpha: 1)
        }
    }
}

class SVGPathView: UIView {
    func renderAsImage(desiredSize: CGSize) -> UIImage? {
        
        UIGraphicsBeginImageContextWithOptions(desiredSize, false, 0)
        defer { UIGraphicsEndImageContext() }
        self.layer.render(in: UIGraphicsGetCurrentContext()!)
        return UIGraphicsGetImageFromCurrentImageContext()
        
    }
    private var paths: [(id: String?, path: UIBezierPath, color: UIColor)] = []
    private var currentColors: [String: UIColor] = [:] // Store current colors by ID

    // MARK: - Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .clear
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        backgroundColor = .clear
    }

    // MARK: - Drawing
    override func draw(_ rect: CGRect) {
        for pathInfo in paths {
            let color = currentColors[pathInfo.id ?? ""] ?? pathInfo.color
            color.setFill()
            color.setStroke()
            pathInfo.path.stroke()
            pathInfo.path.fill()
        }
    }

    // MARK: - Color Management
    func setColor(_ color: UIColor, forElementWithID id: String) {
        currentColors[id] = color
        setNeedsDisplay()
    }

    func resetColorForElementWithID(_ id: String) {
        currentColors.removeValue(forKey: id)
        setNeedsDisplay()
    }

    func getElementIDsWithColorPrefix() -> [String] {
        var colorPrefixIDs: [String] = []

        for pathInfo in paths {
            if let id = pathInfo.id, id.hasPrefix("Color") {
                colorPrefixIDs.append(id)
            }
        }

        return colorPrefixIDs
    }

    // MARK: - SVG Loading
    func loadSVGFromData(data: String) {
        guard !data.isEmpty else {
            print("Failed to load SVG data: The provided data is empty.")
            return
        }
        
        // Verify that the data is actually SVG content
        guard data.lowercased().contains("<svg") else {
            print("Failed to load SVG data: The provided data does not appear to be an SVG.")
            return
        }
        
        loadSVG(xmlString: data)
    }
    

    func loadSVGFromURL(urlString: String) async {
        guard let url = URL(string: urlString) else {
            print("Failed to create URL from string: \(urlString)")
            return
        }
        
        do {
            // Step 2: Perform the data task with async-await
            let (data, _) = try await URLSession.shared.data(from: url)
            
            guard let svgString = String(data: data, encoding: .utf8) else {
                print("Failed to convert data to string.")
                return
            }
            
            // Step 3: Ensure UI updates on the main thread
            await MainActor.run {
                self.loadSVG(xmlString: svgString)
            }
            
        } catch {
            print("Failed to load SVG from URL: \(error.localizedDescription)")
        }
    }

    
    func loadSVGFromBundle(named name: String, withExtension ext: String = "svg") {
               guard let svgPath = Bundle.main.path(forResource: name, ofType: ext),
                     let svgString = try? String(contentsOfFile: svgPath) else {
                   print("Failed to load SVG file from bundle.")
                   return
               }

               loadSVG(xmlString: svgString)
           }
        
    // MARK: - SVG Parsing
    private func loadSVG(xmlString: String) {
//        print(xmlString)
        paths.removeAll()
        currentColors.removeAll()

        guard let data = xmlString.data(using: .utf8) else { return }

        let parser = SVGParser()
        parser.parseSVG(data: data) { paths in
            self.paths = paths
            self.setNeedsDisplay()
        }
    }
}

// MARK: - SVG Parser
class SVGParser: NSObject, XMLParserDelegate {
    private var paths: [(id: String?, path: UIBezierPath, color: UIColor)] = []
    private var completionHandler: ([(id: String?, path: UIBezierPath, color: UIColor)]) -> Void = { _ in }

    func parseSVG(data: Data, completion: @escaping ([(id: String?, path: UIBezierPath, color: UIColor)]) -> Void) {
        self.completionHandler = completion
        let parser = XMLParser(data: data)
        parser.delegate = self
        parser.parse()
    }

    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String: String] = [:]) {
        if elementName == "path" {
            if let pathData = attributeDict["d"] {
                let path = UIBezierPath()
                parsePath(pathData, into: path)

                // Get element ID
                let elementId = attributeDict["id"]

                // Parse fill color
                var fillColor: UIColor = .black
                if let fill = attributeDict["fill"] {
                    if fill == "none" {
                        fillColor = .clear
                    } else {
                        fillColor = UIColor(svgColor: fill)
                    }
                } else if let style = attributeDict["style"] {
                    let styles = style.components(separatedBy: ";")
                    for styleItem in styles {
                        let parts = styleItem.components(separatedBy: ":")
                        if parts.count == 2 {
                            let key = parts[0].trimmingCharacters(in: .whitespaces)
                            let value = parts[1].trimmingCharacters(in: .whitespaces)
                            if key == "fill" {
                                if value == "none" {
                                    fillColor = .clear
                                } else {
                                    fillColor = UIColor(svgColor: value)
                                }
                            }
                        }
                    }
                }

                paths.append((id: elementId, path: path, color: fillColor))
            }
        }
    }

    func parserDidEndDocument(_ parser: XMLParser) {
        completionHandler(paths)
    }

    // MARK: - Path Parsing
    
        private func parsePath(_ pathData: String, into path: UIBezierPath) {
            var scanner = Scanner(string: pathData)
            var currentPoint = CGPoint.zero
            var command: String?
            var lastControlPoint: CGPoint?
            var subpathStart: CGPoint?

            while !scanner.isAtEnd {
                if let cmd = scanner.scanCharacters(from: CharacterSet.letters) {
                    command = cmd
                    continue
                }

                // Parse numeric values
                while let number = scanner.scanDouble() {
                    switch command {
                    case "M": // Move To
                        currentPoint = CGPoint(x: number, y: scanY(&scanner))
                        path.move(to: currentPoint)
                        subpathStart = currentPoint
                    case "L": // Line To
                        let endPoint = CGPoint(x: number, y: scanY(&scanner))
                        path.addLine(to: endPoint)
                        currentPoint = endPoint
                    case "H": // Horizontal Line To
                        let endPoint = CGPoint(x: number, y: currentPoint.y)
                        path.addLine(to: endPoint)
                        currentPoint = endPoint
                    case "V": // Vertical Line To
                        let endPoint = CGPoint(x: currentPoint.x, y: number)
                        path.addLine(to: endPoint)
                        currentPoint = endPoint
                    case "C": // Cubic Bézier Curve
                        let controlPoint1 = CGPoint(x: number, y: scanY(&scanner))
                        let controlPoint2 = CGPoint(x: scanner.scanDouble()!, y: scanY(&scanner))
                        let endPoint = CGPoint(x: scanner.scanDouble()!, y: scanY(&scanner))
                        path.addCurve(to: endPoint, controlPoint1: controlPoint1, controlPoint2: controlPoint2)
                        currentPoint = endPoint
                        lastControlPoint = controlPoint2
                    case "Q": // Quadratic Bézier Curve
                        let controlPoint = CGPoint(x: number, y: scanY(&scanner))
                        let endPoint = CGPoint(x: scanner.scanDouble()!, y: scanY(&scanner))
                        path.addQuadCurve(to: endPoint, controlPoint: controlPoint)
                        currentPoint = endPoint
                        lastControlPoint = controlPoint
                    case "Z", "z": // Close Path
                        if let start = subpathStart {
                            path.addLine(to: start)
                        }
                        path.close()
                        currentPoint = subpathStart ?? currentPoint
                    case "m": // Relative Move To
                        currentPoint = CGPoint(x: currentPoint.x + number, y: currentPoint.y + scanY(&scanner))
                        path.move(to: currentPoint)
                        subpathStart = currentPoint
                    case "l": // Relative Line To
                        let endPoint = CGPoint(x: currentPoint.x + number, y: currentPoint.y + scanY(&scanner))
                        path.addLine(to: endPoint)
                        currentPoint = endPoint
                    case "h": // Relative Horizontal Line To
                        let endPoint = CGPoint(x: currentPoint.x + number, y: currentPoint.y)
                        path.addLine(to: endPoint)
                        currentPoint = endPoint
                    case "v": // Relative Vertical Line To
                        let endPoint = CGPoint(x: currentPoint.x, y: currentPoint.y + number)
                        path.addLine(to: endPoint)
                        currentPoint = endPoint
                    case "c": // Relative Cubic Bézier Curve
                        let controlPoint1 = CGPoint(x: currentPoint.x + number, y: currentPoint.y + scanY(&scanner))
                        let controlPoint2 = CGPoint(x: currentPoint.x + scanner.scanDouble()!, y: currentPoint.y + scanY(&scanner))
                        let endPoint = CGPoint(x: currentPoint.x + scanner.scanDouble()!, y: currentPoint.y + scanY(&scanner))
                        path.addCurve(to: endPoint, controlPoint1: controlPoint1, controlPoint2: controlPoint2)
                        currentPoint = endPoint
                        lastControlPoint = controlPoint2
                    case "q": // Relative Quadratic Bézier Curve
                        let controlPoint = CGPoint(x: currentPoint.x + number, y: currentPoint.y + scanY(&scanner))
                        let endPoint = CGPoint(x: currentPoint.x + scanner.scanDouble()!, y: currentPoint.y + scanY(&scanner))
                        path.addQuadCurve(to: endPoint, controlPoint: controlPoint)
                        currentPoint = endPoint
                        lastControlPoint = controlPoint
                    case "S": // Smooth Cubic Bézier Curve
                        let controlPoint2 = CGPoint(x: number, y: scanY(&scanner))
                        let endPoint = CGPoint(x: scanner.scanDouble()!, y: scanY(&scanner))
                        let controlPoint1 = lastControlPoint.map { CGPoint(x: 2 * currentPoint.x - $0.x, y: 2 * currentPoint.y - $0.y) } ?? currentPoint
                        path.addCurve(to: endPoint, controlPoint1: controlPoint1, controlPoint2: controlPoint2)
                        currentPoint = endPoint
                        lastControlPoint = controlPoint2
                    case "s": // Relative Smooth Cubic Bézier Curve
                        let controlPoint2 = CGPoint(x: currentPoint.x + number, y: currentPoint.y + scanY(&scanner))
                        let endPoint = CGPoint(x: currentPoint.x + scanner.scanDouble()!, y: currentPoint.y + scanY(&scanner))
                        let controlPoint1 = lastControlPoint.map { CGPoint(x: 2 * currentPoint.x - $0.x, y: 2 * currentPoint.y - $0.y) } ?? currentPoint
                        path.addCurve(to: endPoint, controlPoint1: controlPoint1, controlPoint2: controlPoint2)
                        currentPoint = endPoint
                        lastControlPoint = controlPoint2
                    case "T": // Smooth Quadratic Bézier Curve
                        let endPoint = CGPoint(x: number, y: scanY(&scanner))
                        let controlPoint = lastControlPoint.map { CGPoint(x: 2 * currentPoint.x - $0.x, y: 2 * currentPoint.y - $0.y) } ?? currentPoint
                        path.addQuadCurve(to: endPoint, controlPoint: controlPoint)
                        currentPoint = endPoint
                        lastControlPoint = controlPoint
                    case "t": // Relative Smooth Quadratic Bézier Curve
                        let endPoint = CGPoint(x: currentPoint.x + number, y: currentPoint.y + scanY(&scanner))
                        let controlPoint = lastControlPoint.map { CGPoint(x: 2 * currentPoint.x - $0.x, y: 2 * currentPoint.y - $0.y) } ?? currentPoint
                        path.addQuadCurve(to: endPoint, controlPoint: controlPoint)
                        currentPoint = endPoint
                        lastControlPoint = controlPoint
                    case "A": // Elliptical Arc
                        let rx = number
                        let ry = scanY(&scanner)
                        let xAxisRotation = scanner.scanDouble()!
                        let largeArcFlag = scanner.scanDouble()!
                        let sweepFlag = scanner.scanDouble()!
                        let endPoint = CGPoint(x: scanner.scanDouble()!, y: scanY(&scanner))
                        addEllipticalArc(path: path, from: currentPoint, to: endPoint, rx: rx, ry: ry, xAxisRotation: xAxisRotation, largeArcFlag: largeArcFlag != 0, sweepFlag: sweepFlag != 0)
                        currentPoint = endPoint
                    case "a": // Relative Elliptical Arc
                        let rx = number
                        let ry = scanY(&scanner)
                        let xAxisRotation = scanner.scanDouble()!
                        let largeArcFlag = scanner.scanDouble()!
                        let sweepFlag = scanner.scanDouble()!
                        let endPoint = CGPoint(x: currentPoint.x + scanner.scanDouble()!, y: currentPoint.y + scanY(&scanner))
                        addEllipticalArc(path: path, from: currentPoint, to: endPoint, rx: rx, ry: ry, xAxisRotation: xAxisRotation, largeArcFlag: largeArcFlag != 0, sweepFlag: sweepFlag != 0)
                        currentPoint = endPoint
                    case "ZM", "zm": // Close Path and Move
                        if let start = subpathStart {
                            path.addLine(to: start)
                        }
                        path.close()
                        currentPoint = CGPoint(x: number, y: scanY(&scanner))
                        path.move(to: currentPoint)
                        subpathStart = currentPoint
                    default:
                        print("Unsupported command: \(command ?? "")")
                    }
                }
            }
        }

    
    private func scanY(_ scanner: inout Scanner) -> Double {
        return scanner.scanDouble() ?? 0.0
    }

}
extension SVGParser {
    private func addEllipticalArc(path: UIBezierPath, from start: CGPoint, to end: CGPoint, rx: CGFloat, ry: CGFloat, xAxisRotation: CGFloat, largeArcFlag: Bool, sweepFlag: Bool) {
        // Ensure radii are positive
        var rx = abs(rx)
        var ry = abs(ry)

        // If the endpoints are identical, do nothing
        if start == end {
            return
        }

        // Convert angle from degrees to radians
        let angleRad = xAxisRotation * .pi / 180.0

        // Step 1: Compute (x1', y1')
        let dx = (start.x - end.x) / 2.0
        let dy = (start.y - end.y) / 2.0
        let x1 = cos(angleRad) * dx + sin(angleRad) * dy
        let y1 = -sin(angleRad) * dx + cos(angleRad) * dy

        // Ensure radii are large enough
        let lambda = (x1 * x1) / (rx * rx) + (y1 * y1) / (ry * ry)
        if lambda > 1 {
            rx *= sqrt(lambda)
            ry *= sqrt(lambda)
        }

        // Step 2: Compute (cx', cy')
        let sign = (largeArcFlag != sweepFlag) ? 1.0 : -1.0
        let sq = ((rx * rx * ry * ry) - (rx * rx * y1 * y1) - (ry * ry * x1 * x1)) / ((rx * rx * y1 * y1) + (ry * ry * x1 * x1))
        let coef = sign * sqrt(max(sq, 0))
        let cx1 = coef * ((rx * y1) / ry)
        let cy1 = coef * -((ry * x1) / rx)

        // Step 3: Compute (cx, cy) from (cx', cy')
        let cosAngle = cos(angleRad)
                let sinAngle = sin(angleRad)
                let xAverageEndpoints = (start.x + end.x) / 2.0
                let yAverageEndpoints = (start.y + end.y) / 2.0
                
                let cx1Term = cosAngle * cx1
                let cy1Term = sinAngle * cy1
                let cx = cx1Term - cy1Term + xAverageEndpoints
                
                let cx1TermForY = sinAngle * cx1
                let cy1TermForY = cosAngle * cy1
                let cy = cx1TermForY + cy1TermForY + yAverageEndpoints

                // Step 4: Compute the start angle and the angle extent
                let ux = (x1 - cx1) / rx
                let uy = (y1 - cy1) / ry
                let vx = (-x1 - cx1) / rx
                let vy = (-y1 - cy1) / ry
                
                let startAngle = vectorAngle(ux: 1, uy: 0, vx: ux, vy: uy)
                var angleExtent = vectorAngle(ux: ux, uy: uy, vx: vx, vy: vy)

                if !sweepFlag && angleExtent > 0 {
                    angleExtent -= 2 * .pi
                } else if sweepFlag && angleExtent < 0 {
                    angleExtent += 2 * .pi
                }

                // We now have the center point and angles, so we can create the ellipse
        let ellipsePath = UIBezierPath()
                ellipsePath.addArc(withCenter: CGPoint(x: cx, y: cy),
                                   radius: rx,
                                   startAngle: 0,
                                   endAngle: 2 * .pi,
                                   clockwise: true)

                // Adjust for non-circular ellipse
                ellipsePath.apply(CGAffineTransform(scaleX: 1, y: ry/rx))

                // Rotate the ellipse
                ellipsePath.apply(CGAffineTransform(rotationAngle: angleRad))

                // Extract the relevant portion of the ellipse
                let fullEllipse = ellipsePath.cgPath
                let relevantArc = UIBezierPath()
                relevantArc.move(to: start)
                relevantArc.addArc(withCenter: CGPoint(x: cx, y: cy),
                                   radius: rx,
                                   startAngle: startAngle,
                                   endAngle: startAngle + angleExtent,
                                   clockwise: sweepFlag)

                // Add the arc to the input path
                path.append(relevantArc)
    }

    private func vectorAngle(ux: CGFloat, uy: CGFloat, vx: CGFloat, vy: CGFloat) -> CGFloat {
        let ta = atan2(uy, ux)
        let tb = atan2(vy, vx)
        if tb >= ta {
            return tb - ta
        }
        return 2 * .pi - (ta - tb)
    }
}
