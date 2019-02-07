This is a modified version of the vadymmarkov/Fakery package. https://github.com/vadymmarkov/Fakery

There are two differences with this repository. First, I've added a couple modifications to Faker.lorem.paragraphs to accept both random-ranged paragraph count and sentence count.

Also, there is some rudimentary support for SPM installation. In the normal package, the system cannot figure out how to find the Resources/Locales.

Instructions…

1. include https://github.com/EricWVGG/Fakery.git in your Package.swift
2. Copy the Resources/Locales folder from the Dependencies to your project Resources folder.
3. Manually get the data file from your Resources and feed it to faker thusly:
```swift
let rootDirectory = DirectoryConfig.detect().workDir
let localesDir = URL(fileURLWithPath: "\(rootDirectory)Resources/Locales")
let fileURL = localesDir.appendingPathComponent("en.json")
let data = try? Data(contentsOf: fileURL)
if data == nil { /* go nuts */ }
let faker = Faker(locale: "en", localeData: data)
```

For random paragraphs:
```swift
let copy = faker.lorem.paragraphsRandom(5..<15, sentencesAmount: 5..<10, wordsAmount: 10..<16, lineBreakBetween: true)
```

`lineBreakBetween` creates two lines between paragraphs, for the use of Markdown compatibility.

I suppose these two features should be different branches, and the one with random paragraphs might benefit from more Markdown support (probably even a Faker.markdown Generator). If there is any desire for this, please hit me up and perhaps I’ll make a formal pull request.
