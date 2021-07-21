//
//  ContentView.swift
//  RainbowAnimationTest
//
//  Created by Djallil Elkebir on 2021-07-20.
//

import SwiftUI

struct ContentView: View {
    let colors: [Color] = [.red,.orange,.yellow,.green,.blue,.purple,.pink]
    @State private var unitIndex: UnitPoint = .center
    @State private var titleCentered: Bool = false
    @State private var showSubtitle: Bool = false
    @State private var showEmojis: Bool = false
    @State private var firstTrim: Bool = false
    
    var body: some View {
        ZStack {
            AngularGradient(gradient: Gradient(colors: colors), center: titleCentered ? .bottom : .center)
            VStack{
                Spacer()
                HStack {
                    RainbowSVG()
                        .trim(from: 0, to: firstTrim ? 0.8 : 0)
                        .foregroundColor(.white)
                        .frame(width: 200,height: 200)
                        .blendMode(.overlay)
                        
                }
                .font(.largeTitle)
                .padding()
                Text("Rainbow App")
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .blendMode(.overlay)
                    .offset(y: titleCentered ? 0 : -500)
                    .onAppear{
                        withAnimation(.easeInOut(duration: 5)){
                        titleCentered = true
                        }
                        withAnimation(.easeInOut(duration: 8)){
                        showSubtitle = true
                        }
                        withAnimation(.easeInOut(duration: 10)){
                            firstTrim = true
                        }
                    }
                    .transition(.move(edge: .bottom))
                Text("Add Subtitle here")
                    .bold()
                    .font(.title)
                    .foregroundColor(.white)
                    .blendMode(.overlay)
                    .offset(x: showSubtitle ? 0 : -500)
                    .transition(.move(edge: .leading))
                    .padding()
                Spacer()
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct RainbowSVG: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.07742*width, y: 0.75962*height))
        path.addCurve(to: CGPoint(x: 0.07693*width, y: 0.74038*height), control1: CGPoint(x: 0.07713*width, y: 0.75323*height), control2: CGPoint(x: 0.07693*width, y: 0.74683*height))
        path.addCurve(to: CGPoint(x: 0.50002*width, y: 0.3173*height), control1: CGPoint(x: 0.07693*width, y: 0.5071*height), control2: CGPoint(x: 0.26672*width, y: 0.3173*height))
        path.addCurve(to: CGPoint(x: 0.9231*width, y: 0.74038*height), control1: CGPoint(x: 0.73332*width, y: 0.3173*height), control2: CGPoint(x: 0.9231*width, y: 0.50708*height))
        path.addCurve(to: CGPoint(x: 0.92262*width, y: 0.75962*height), control1: CGPoint(x: 0.9231*width, y: 0.74683*height), control2: CGPoint(x: 0.9229*width, y: 0.75323*height))
        path.addLine(to: CGPoint(x: 0.99955*width, y: 0.75962*height))
        path.addCurve(to: CGPoint(x: width, y: 0.74038*height), control1: CGPoint(x: 0.99975*width, y: 0.75322*height), control2: CGPoint(x: width, y: 0.74683*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0.24038*height), control1: CGPoint(x: width, y: 0.46423*height), control2: CGPoint(x: 0.77615*width, y: 0.24038*height))
        path.addCurve(to: CGPoint(x: 0, y: 0.74038*height), control1: CGPoint(x: 0.22385*width, y: 0.24038*height), control2: CGPoint(x: 0, y: 0.46423*height))
        path.addCurve(to: CGPoint(x: 0.00048*width, y: 0.75962*height), control1: CGPoint(x: 0, y: 0.74683*height), control2: CGPoint(x: 0.00025*width, y: 0.75322*height))
        path.addLine(to: CGPoint(x: 0.07742*width, y: 0.75962*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.15482*width, y: 0.75962*height))
        path.addCurve(to: CGPoint(x: 0.15385*width, y: 0.74038*height), control1: CGPoint(x: 0.15447*width, y: 0.75322*height), control2: CGPoint(x: 0.15385*width, y: 0.74688*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0.39423*height), control1: CGPoint(x: 0.15385*width, y: 0.54952*height), control2: CGPoint(x: 0.30913*width, y: 0.39423*height))
        path.addCurve(to: CGPoint(x: 0.84615*width, y: 0.74038*height), control1: CGPoint(x: 0.69087*width, y: 0.39423*height), control2: CGPoint(x: 0.84615*width, y: 0.54953*height))
        path.addCurve(to: CGPoint(x: 0.84518*width, y: 0.75962*height), control1: CGPoint(x: 0.84615*width, y: 0.74687*height), control2: CGPoint(x: 0.84553*width, y: 0.75322*height))
        path.addLine(to: CGPoint(x: 0.9226*width, y: 0.75962*height))
        path.addCurve(to: CGPoint(x: 0.92308*width, y: 0.74038*height), control1: CGPoint(x: 0.92288*width, y: 0.75323*height), control2: CGPoint(x: 0.92308*width, y: 0.74683*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0.3173*height), control1: CGPoint(x: 0.92308*width, y: 0.5071*height), control2: CGPoint(x: 0.7333*width, y: 0.3173*height))
        path.addCurve(to: CGPoint(x: 0.07692*width, y: 0.74038*height), control1: CGPoint(x: 0.2667*width, y: 0.3173*height), control2: CGPoint(x: 0.07692*width, y: 0.5071*height))
        path.addCurve(to: CGPoint(x: 0.0774*width, y: 0.75962*height), control1: CGPoint(x: 0.07692*width, y: 0.74683*height), control2: CGPoint(x: 0.07712*width, y: 0.75323*height))
        path.addLine(to: CGPoint(x: 0.15482*width, y: 0.75962*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.23175*width, y: 0.75962*height))
        path.addCurve(to: CGPoint(x: 0.23078*width, y: 0.74038*height), control1: CGPoint(x: 0.2313*width, y: 0.75323*height), control2: CGPoint(x: 0.23078*width, y: 0.74688*height))
        path.addCurve(to: CGPoint(x: 0.50002*width, y: 0.47115*height), control1: CGPoint(x: 0.23078*width, y: 0.59193*height), control2: CGPoint(x: 0.35155*width, y: 0.47115*height))
        path.addCurve(to: CGPoint(x: 0.76925*width, y: 0.74038*height), control1: CGPoint(x: 0.64848*width, y: 0.47115*height), control2: CGPoint(x: 0.76925*width, y: 0.59192*height))
        path.addCurve(to: CGPoint(x: 0.76828*width, y: 0.75962*height), control1: CGPoint(x: 0.76925*width, y: 0.74687*height), control2: CGPoint(x: 0.76873*width, y: 0.75323*height))
        path.addLine(to: CGPoint(x: 0.8452*width, y: 0.75962*height))
        path.addCurve(to: CGPoint(x: 0.84617*width, y: 0.74038*height), control1: CGPoint(x: 0.84555*width, y: 0.75322*height), control2: CGPoint(x: 0.84617*width, y: 0.74688*height))
        path.addCurve(to: CGPoint(x: 0.50002*width, y: 0.39423*height), control1: CGPoint(x: 0.84617*width, y: 0.54952*height), control2: CGPoint(x: 0.69088*width, y: 0.39423*height))
        path.addCurve(to: CGPoint(x: 0.15385*width, y: 0.74038*height), control1: CGPoint(x: 0.30915*width, y: 0.39423*height), control2: CGPoint(x: 0.15385*width, y: 0.54952*height))
        path.addCurve(to: CGPoint(x: 0.15482*width, y: 0.75962*height), control1: CGPoint(x: 0.15385*width, y: 0.74687*height), control2: CGPoint(x: 0.15447*width, y: 0.75322*height))
        path.addLine(to: CGPoint(x: 0.23175*width, y: 0.75962*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.30867*width, y: 0.75962*height))
        path.addCurve(to: CGPoint(x: 0.3077*width, y: 0.74038*height), control1: CGPoint(x: 0.30803*width, y: 0.75328*height), control2: CGPoint(x: 0.3077*width, y: 0.74688*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0.54808*height), control1: CGPoint(x: 0.3077*width, y: 0.63435*height), control2: CGPoint(x: 0.39397*width, y: 0.54808*height))
        path.addCurve(to: CGPoint(x: 0.6923*width, y: 0.74038*height), control1: CGPoint(x: 0.60603*width, y: 0.54808*height), control2: CGPoint(x: 0.6923*width, y: 0.63437*height))
        path.addCurve(to: CGPoint(x: 0.69133*width, y: 0.75962*height), control1: CGPoint(x: 0.6923*width, y: 0.74687*height), control2: CGPoint(x: 0.69195*width, y: 0.75328*height))
        path.addLine(to: CGPoint(x: 0.76825*width, y: 0.75962*height))
        path.addCurve(to: CGPoint(x: 0.76922*width, y: 0.74038*height), control1: CGPoint(x: 0.7687*width, y: 0.75323*height), control2: CGPoint(x: 0.76922*width, y: 0.74688*height))
        path.addCurve(to: CGPoint(x: 0.49998*width, y: 0.47115*height), control1: CGPoint(x: 0.76922*width, y: 0.59193*height), control2: CGPoint(x: 0.64845*width, y: 0.47115*height))
        path.addCurve(to: CGPoint(x: 0.23075*width, y: 0.74038*height), control1: CGPoint(x: 0.35152*width, y: 0.47115*height), control2: CGPoint(x: 0.23075*width, y: 0.59192*height))
        path.addCurve(to: CGPoint(x: 0.23172*width, y: 0.75962*height), control1: CGPoint(x: 0.23075*width, y: 0.74687*height), control2: CGPoint(x: 0.23127*width, y: 0.75323*height))
        path.addLine(to: CGPoint(x: 0.30867*width, y: 0.75962*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.38635*width, y: 0.75962*height))
        path.addCurve(to: CGPoint(x: 0.38462*width, y: 0.74038*height), control1: CGPoint(x: 0.38528*width, y: 0.75335*height), control2: CGPoint(x: 0.38462*width, y: 0.74695*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0.625*height), control1: CGPoint(x: 0.38462*width, y: 0.67675*height), control2: CGPoint(x: 0.43637*width, y: 0.625*height))
        path.addCurve(to: CGPoint(x: 0.61538*width, y: 0.74038*height), control1: CGPoint(x: 0.56363*width, y: 0.625*height), control2: CGPoint(x: 0.61538*width, y: 0.67675*height))
        path.addCurve(to: CGPoint(x: 0.61365*width, y: 0.75962*height), control1: CGPoint(x: 0.61538*width, y: 0.74695*height), control2: CGPoint(x: 0.6147*width, y: 0.75335*height))
        path.addLine(to: CGPoint(x: 0.69133*width, y: 0.75962*height))
        path.addCurve(to: CGPoint(x: 0.6923*width, y: 0.74038*height), control1: CGPoint(x: 0.69197*width, y: 0.75328*height), control2: CGPoint(x: 0.6923*width, y: 0.74688*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0.54808*height), control1: CGPoint(x: 0.6923*width, y: 0.63435*height), control2: CGPoint(x: 0.60603*width, y: 0.54808*height))
        path.addCurve(to: CGPoint(x: 0.3077*width, y: 0.74038*height), control1: CGPoint(x: 0.39397*width, y: 0.54808*height), control2: CGPoint(x: 0.3077*width, y: 0.63437*height))
        path.addCurve(to: CGPoint(x: 0.30867*width, y: 0.75962*height), control1: CGPoint(x: 0.3077*width, y: 0.74687*height), control2: CGPoint(x: 0.30805*width, y: 0.75328*height))
        path.addLine(to: CGPoint(x: 0.38635*width, y: 0.75962*height))
        path.closeSubpath()
        return path
    }
}
