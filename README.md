# PASOS
## Config del proyecto (para usar Swift 2.3 en Xcode8)
- Tener en "Use legacy swift compiler" en YES: https://cl.ly/1O2D302D0o2t

## Config para estructura de proyecto
- Tener un DLDemoRootViewController como initialView de tipo DLHamburguerViewController
- Tener un UINavigation DLHamburguerNavigationController de tipo UINavigationController
- Tener DLDemoMainContentViewController de tipo UIViewController

## Config del UIViewController para el sidebar:
- Configurar 'DLDemoMenuViewController'

## Config para UINavigationBar
- Mostrar UINavigationBar en todas las pantallas
- En AppDelegate.swift o un Configuracion.swift el cual este referenciado en didFinishLaunchingWithOptions... estilizar el UINavigationBar con el metodo de appearance() y modificar  el tintBarColor y el tintColor, por ejemplo:

```Swift
navigationBarAppearace.tintColor = UIColor.whiteColor()
navigationBarAppearace.barTintColor = UIColor.blueColor()
```
## Config para botones
- Redimensionar todos las imágenes de los botones a 22x22 en el Sketch para que exporte a @1x, @2x, @3x (22, 44, 66 correspondientemente)
- Agregar Bar Button Item por cada botón que se quiera tener ya sea en el lado izquierdo o derecho.
- Agregar a imageAssets la imagen
- Referenciar en cada boton su imagen correspondiente  

## Config para Status Bar
- Fijar en info.plist el Key "UIViewControllerBasedStatusBarAppearance" = BOOL:No
- Meter en el ViewController  lo siguiente:  
- Para BG: desmarcar Translucent y configurar el Bar Tint al color del fondo deseado https://cl.ly/1r0s3r1A262d
- Para Color Botones: Modificar el tint por el color deseado https://cl.ly/2w1A3S0z2M2k

```Swift
// ViewWillAppear
UIApplication.sharedApplication().statusBarStyle = .LightContent

// ViewWillDissapear
UIApplication.sharedApplication().statusBarStyle = UIStatusBarStyle.Default
```

## Config para el titulo del UINavigationBar Title
- Definir una fuente en una variable (es opcional porque puede fallar si tiene un nombre equivocado de fuente)
- Usar el siguiente código para configurarlo

```Swift
  if let defaultTitleFont = UIFont(name: "HelveticaNeue-Light", size: 10) {
      
      var navigationBarAppearace = UINavigationBar.appearance()
      navigationBarAppearace.titleTextAttributes = [
        NSForegroundColorAttributeName: UIColor.whiteColor(),
        NSFontAttributeName: defaultTitleFont
      ]
      
  }
```