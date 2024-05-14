; ModuleID = 'marshal_methods.arm64-v8a.ll'
source_filename = "marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [398 x ptr] zeroinitializer, align 8

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [796 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 243
	i64 47637496229263198, ; 1: it\Microsoft.VisualStudio.TestPlatform.Common.resources.dll => 0xa93e0ce8bbf75e => 372
	i64 98382396393917666, ; 2: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 183
	i64 120698629574877762, ; 3: Mono.Android => 0x1accec39cafe242 => 171
	i64 131669012237370309, ; 4: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 193
	i64 196720943101637631, ; 5: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 58
	i64 206980223877136582, ; 6: cs\Microsoft.TestPlatform.CommunicationUtilities.resources.dll => 0x2df576abfba40c6 => 358
	i64 210515253464952879, ; 7: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 230
	i64 229794953483747371, ; 8: System.ValueTuple.dll => 0x330654aed93802b => 151
	i64 232391251801502327, ; 9: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 271
	i64 295915112840604065, ; 10: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 274
	i64 316157742385208084, ; 11: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 237
	i64 348532633569910570, ; 12: Microsoft.TestPlatform.Utilities => 0x4d63c956890df2a => 200
	i64 350667413455104241, ; 13: System.ServiceProcess.dll => 0x4ddd227954be8f1 => 132
	i64 358744575426475612, ; 14: es\Microsoft.VisualStudio.TestPlatform.Common.resources => 0x4fa844a6764b65c => 366
	i64 383952053976779057, ; 15: de\Microsoft.TestPlatform.CoreUtilities.resources.dll => 0x554125bdc114931 => 334
	i64 384983419793289340, ; 16: it\Microsoft.TestPlatform.CommunicationUtilities.resources => 0x557bc616d31b07c => 370
	i64 419930437115159537, ; 17: tr\Microsoft.TestPlatform.CommunicationUtilities.resources => 0x5d3e481f69fa3f1 => 388
	i64 422779754995088667, ; 18: System.IO.UnmanagedMemoryStream => 0x5de03f27ab57d1b => 56
	i64 435118502366263740, ; 19: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x609d9f8f8bdb9bc => 273
	i64 464346026994987652, ; 20: System.Reactive.dll => 0x671b04057e67284 => 213
	i64 515963292785918183, ; 21: ko\Microsoft.VisualStudio.TestPlatform.Common.resources => 0x72911e18fa540e7 => 378
	i64 560278790331054453, ; 22: System.Reflection.Primitives => 0x7c6829760de3975 => 95
	i64 569564398114481256, ; 23: Microsoft.TestPlatform.CoreUtilities => 0x7e77fcd6a52a468 => 195
	i64 634308326490598313, ; 24: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 256
	i64 649145001856603771, ; 25: System.Security.SecureString => 0x90239f09b62167b => 129
	i64 666645149764583677, ; 26: cs\Microsoft.TestPlatform.CrossPlatEngine.resources.dll => 0x940663b4ef480fd => 359
	i64 680363742271143144, ; 27: ja\Microsoft.VisualStudio.TestPlatform.ObjectModel.resources => 0x971233808207ce8 => 343
	i64 750875890346172408, ; 28: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 145
	i64 798450721097591769, ; 29: Xamarin.AndroidX.Collection.Ktx.dll => 0xb14aab351ad2bd9 => 231
	i64 799765834175365804, ; 30: System.ComponentModel.dll => 0xb1956c9f18442ac => 18
	i64 805302231655005164, ; 31: hu\Microsoft.Maui.Controls.resources.dll => 0xb2d021ceea03bec => 310
	i64 872800313462103108, ; 32: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 242
	i64 895210737996778430, ; 33: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0xc6c6d6c5569cbbe => 257
	i64 940822596282819491, ; 34: System.Transactions => 0xd0e792aa81923a3 => 150
	i64 960778385402502048, ; 35: System.Runtime.Handles.dll => 0xd555ed9e1ca1ba0 => 104
	i64 964614131093751526, ; 36: it\Microsoft.TestPlatform.CoreUtilities.resources.dll => 0xd62ff71052a46e6 => 340
	i64 987364250896784675, ; 37: de\Microsoft.VisualStudio.TestPlatform.Common.resources => 0xdb3d28e0e9f5d23 => 363
	i64 1010599046655515943, ; 38: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 95
	i64 1103253330105578028, ; 39: testhost.dll => 0xf4f8b0ef635b22c => 202
	i64 1120440138749646132, ; 40: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 286
	i64 1131324090314641426, ; 41: fr\Microsoft.VisualStudio.TestPlatform.Common.resources.dll => 0xfb34544210bd012 => 369
	i64 1155293581196374002, ; 42: ru\Microsoft.TestPlatform.CoreUtilities.resources.dll => 0x10086d641e7faff2 => 350
	i64 1224204378712574818, ; 43: pl\Microsoft.TestPlatform.CrossPlatEngine.resources.dll => 0x10fd3f6575a40b62 => 380
	i64 1268860745194512059, ; 44: System.Drawing.dll => 0x119be62002c19ebb => 36
	i64 1301626418029409250, ; 45: System.Diagnostics.FileVersionInfo => 0x12104e54b4e833e2 => 28
	i64 1315114680217950157, ; 46: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 226
	i64 1369545283391376210, ; 47: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 264
	i64 1404195534211153682, ; 48: System.IO.FileSystem.Watcher.dll => 0x137cb4660bd87f12 => 50
	i64 1425944114962822056, ; 49: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 115
	i64 1472482321403310552, ; 50: pl\Microsoft.VisualStudio.TestPlatform.ObjectModel.resources.dll => 0x146f4edea94971d8 => 347
	i64 1476839205573959279, ; 51: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 70
	i64 1486715745332614827, ; 52: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 190
	i64 1492954217099365037, ; 53: System.Net.HttpListener => 0x14b809f350210aad => 65
	i64 1509266843412015967, ; 54: Microsoft.VisualStudio.CodeCoverage.Shim => 0x14f1fe3298d92b5f => 174
	i64 1513467482682125403, ; 55: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 170
	i64 1537168428375924959, ; 56: System.Threading.Thread.dll => 0x15551e8a954ae0df => 145
	i64 1546012405902441892, ; 57: tr\Microsoft.VisualStudio.TestPlatform.ObjectModel.resources => 0x15748a1790297da4 => 353
	i64 1576750169145655260, ; 58: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x15e1bdecc376bfdc => 285
	i64 1596876529298339293, ; 59: it\Microsoft.VisualStudio.TestPlatform.ObjectModel.resources => 0x16293ebe26fc75dd => 341
	i64 1624659445732251991, ; 60: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 225
	i64 1626108477898771886, ; 61: zh-Hant\Microsoft.TestPlatform.CrossPlatEngine.resources.dll => 0x1691190b8f684dae => 395
	i64 1628611045998245443, ; 62: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 260
	i64 1636321030536304333, ; 63: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 250
	i64 1651782184287836205, ; 64: System.Globalization.Calendars => 0x16ec4f2524cb982d => 40
	i64 1659332977923810219, ; 65: System.Reflection.DispatchProxy => 0x1707228d493d63ab => 89
	i64 1682513316613008342, ; 66: System.Net.dll => 0x17597cf276952bd6 => 81
	i64 1722597719627028132, ; 67: zh-Hant\Microsoft.VisualStudio.TestPlatform.Common.resources.dll => 0x17e7e57fd14456a4 => 396
	i64 1725540158281208691, ; 68: cs\Microsoft.TestPlatform.CoreUtilities.resources.dll => 0x17f259a1b405d373 => 332
	i64 1731380447121279447, ; 69: Newtonsoft.Json => 0x18071957e9b889d7 => 204
	i64 1735388228521408345, ; 70: System.Net.Mail.dll => 0x181556663c69b759 => 66
	i64 1743969030606105336, ; 71: System.Memory.dll => 0x1833d297e88f2af8 => 62
	i64 1767386781656293639, ; 72: System.Private.Uri.dll => 0x188704e9f5582107 => 86
	i64 1795316252682057001, ; 73: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 224
	i64 1825687700144851180, ; 74: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 106
	i64 1835311033149317475, ; 75: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 304
	i64 1836611346387731153, ; 76: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 271
	i64 1836985299277495700, ; 77: de\Microsoft.TestPlatform.CoreUtilities.resources => 0x197e48659d0cbd94 => 334
	i64 1854145951182283680, ; 78: System.Runtime.CompilerServices.VisualC => 0x19bb3feb3df2e3a0 => 102
	i64 1875417405349196092, ; 79: System.Drawing.Primitives => 0x1a06d2319b6c713c => 35
	i64 1875917498431009007, ; 80: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 221
	i64 1881198190668717030, ; 81: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 326
	i64 1897575647115118287, ; 82: Xamarin.AndroidX.Security.SecurityCrypto => 0x1a558aff4cba86cf => 273
	i64 1904113745533088721, ; 83: pt-BR\Microsoft.TestPlatform.CoreUtilities.resources.dll => 0x1a6cc55cf67033d1 => 348
	i64 1917020900923949484, ; 84: ko\Microsoft.TestPlatform.CrossPlatEngine.resources => 0x1a9aa05a429241ac => 377
	i64 1920760634179481754, ; 85: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 191
	i64 1925780155338202561, ; 86: zh-Hant\Microsoft.TestPlatform.CoreUtilities.resources.dll => 0x1ab9bed91a6e1dc1 => 356
	i64 1972385128188460614, ; 87: System.Security.Cryptography.Algorithms => 0x1b5f51d2edefbe46 => 119
	i64 1981742497975770890, ; 88: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 258
	i64 2040001226662520565, ; 89: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 142
	i64 2062890601515140263, ; 90: System.Threading.Tasks.Dataflow => 0x1ca0dc1289cd44a7 => 141
	i64 2064708342624596306, ; 91: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 294
	i64 2080945842184875448, ; 92: System.IO.MemoryMappedFiles => 0x1ce10137d8416db8 => 53
	i64 2102659300918482391, ; 93: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 35
	i64 2106033277907880740, ; 94: System.Threading.Tasks.Dataflow.dll => 0x1d3a221ba6d9cb24 => 141
	i64 2107715700938949604, ; 95: pl\Microsoft.TestPlatform.CoreUtilities.resources.dll => 0x1d401c4349fac3e4 => 346
	i64 2133195048986300728, ; 96: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 204
	i64 2152408820173588167, ; 97: Supabase.Functions.dll => 0x1ddee46b01dd46c7 => 207
	i64 2165310824878145998, ; 98: Xamarin.Android.Glide.GifDecoder => 0x1e0cbab9112b81ce => 218
	i64 2165725771938924357, ; 99: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 228
	i64 2200176636225660136, ; 100: Microsoft.Extensions.Logging.Debug.dll => 0x1e8898fe5d5824e8 => 181
	i64 2262844636196693701, ; 101: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 242
	i64 2287834202362508563, ; 102: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 8
	i64 2287887973817120656, ; 103: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 14
	i64 2304837677853103545, ; 104: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0x1ffc6da80d5ed5b9 => 270
	i64 2306462301517933117, ; 105: de\Microsoft.TestPlatform.CommunicationUtilities.resources => 0x2002333e39ce6a3d => 361
	i64 2315304989185124968, ; 106: System.IO.FileSystem.dll => 0x20219d9ee311aa68 => 51
	i64 2329709569556905518, ; 107: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 253
	i64 2335503487726329082, ; 108: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 136
	i64 2337758774805907496, ; 109: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 101
	i64 2462759402812536893, ; 110: es\Microsoft.TestPlatform.CommunicationUtilities.resources.dll => 0x222d7aa0ebe4f83d => 364
	i64 2470498323731680442, ; 111: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 235
	i64 2479423007379663237, ; 112: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 280
	i64 2497223385847772520, ; 113: System.Runtime => 0x22a7eb7046413568 => 116
	i64 2503741058806314188, ; 114: Microsoft.VisualStudio.TestPlatform.Common => 0x22bf133a43b5f4cc => 201
	i64 2547086958574651984, ; 115: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 219
	i64 2592350477072141967, ; 116: System.Xml.dll => 0x23f9e10627330e8f => 163
	i64 2602673633151553063, ; 117: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 325
	i64 2612152650457191105, ; 118: Microsoft.IdentityModel.Tokens.dll => 0x24403afeed9892c1 => 187
	i64 2624866290265602282, ; 119: mscorlib.dll => 0x246d65fbde2db8ea => 166
	i64 2632269733008246987, ; 120: System.Net.NameResolution => 0x2487b36034f808cb => 67
	i64 2634866700793824328, ; 121: fr\Microsoft.TestPlatform.CoreUtilities.resources => 0x2490ed4de3524448 => 338
	i64 2656907746661064104, ; 122: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 177
	i64 2662981627730767622, ; 123: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 300
	i64 2706075432581334785, ; 124: System.Net.WebSockets => 0x258de944be6c0701 => 80
	i64 2783046991838674048, ; 125: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 101
	i64 2787234703088983483, ; 126: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 275
	i64 2789714023057451704, ; 127: Microsoft.IdentityModel.JsonWebTokens.dll => 0x26b70e1f9943eab8 => 185
	i64 2815524396660695947, ; 128: System.Security.AccessControl => 0x2712c0857f68238b => 117
	i64 2894115230615641917, ; 129: zh-Hant\Microsoft.TestPlatform.CommunicationUtilities.resources => 0x2829f677f3e49f3d => 394
	i64 2895129759130297543, ; 130: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 305
	i64 2923871038697555247, ; 131: Jsr305Binding => 0x2893ad37e69ec52f => 287
	i64 2926123043691605432, ; 132: Websocket.Client.dll => 0x289bad67ac52adb8 => 214
	i64 3017136373564924869, ; 133: System.Net.WebProxy => 0x29df058bd93f63c5 => 78
	i64 3017704767998173186, ; 134: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 286
	i64 3106852385031680087, ; 135: System.Runtime.Serialization.Xml => 0x2b1dc1c88b637057 => 114
	i64 3110390492489056344, ; 136: System.Security.Cryptography.Csp.dll => 0x2b2a53ac61900058 => 121
	i64 3135773902340015556, ; 137: System.IO.FileSystem.DriveInfo.dll => 0x2b8481c008eac5c4 => 48
	i64 3154532723826522171, ; 138: ru\Microsoft.VisualStudio.TestPlatform.ObjectModel.resources => 0x2bc726cc8406783b => 351
	i64 3260349211929083484, ; 139: testhost => 0x2d3f16558cc1fe5c => 202
	i64 3281594302220646930, ; 140: System.Security.Principal => 0x2d8a90a198ceba12 => 128
	i64 3289520064315143713, ; 141: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 251
	i64 3303437397778967116, ; 142: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 222
	i64 3311221304742556517, ; 143: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 82
	i64 3325875462027654285, ; 144: System.Runtime.Numerics => 0x2e27e21c8958b48d => 110
	i64 3328853167529574890, ; 145: System.Net.Sockets.dll => 0x2e327651a008c1ea => 75
	i64 3344514922410554693, ; 146: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 297
	i64 3402534845034375023, ; 147: System.IdentityModel.Tokens.Jwt.dll => 0x2f383b6a0629a76f => 212
	i64 3429672777697402584, ; 148: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 193
	i64 3437845325506641314, ; 149: System.IO.MemoryMappedFiles.dll => 0x2fb5ae1beb8f7da2 => 53
	i64 3493805808809882663, ; 150: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 277
	i64 3494946837667399002, ; 151: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 175
	i64 3508450208084372758, ; 152: System.Net.Ping => 0x30b084e02d03ad16 => 69
	i64 3522470458906976663, ; 153: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 276
	i64 3531994851595924923, ; 154: System.Numerics => 0x31042a9aade235bb => 83
	i64 3551103847008531295, ; 155: System.Private.CoreLib.dll => 0x31480e226177735f => 172
	i64 3567343442040498961, ; 156: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 320
	i64 3571415421602489686, ; 157: System.Runtime.dll => 0x319037675df7e556 => 116
	i64 3638003163729360188, ; 158: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 176
	i64 3647754201059316852, ; 159: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 156
	i64 3655542548057982301, ; 160: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 175
	i64 3659371656528649588, ; 161: Xamarin.Android.Glide.Annotations => 0x32c8b3222885dd74 => 216
	i64 3716579019761409177, ; 162: netstandard.dll => 0x3393f0ed5c8c5c99 => 167
	i64 3727469159507183293, ; 163: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 269
	i64 3772598417116884899, ; 164: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 243
	i64 3869221888984012293, ; 165: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 179
	i64 3869649043256705283, ; 166: System.Diagnostics.Tools => 0x35b3c14d74bf0103 => 32
	i64 3890352374528606784, ; 167: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 191
	i64 3919223565570527920, ; 168: System.Security.Cryptography.Encoding => 0x3663e111652bd2b0 => 122
	i64 3933965368022646939, ; 169: System.Net.Requests => 0x369840a8bfadc09b => 72
	i64 3966267475168208030, ; 170: System.Memory => 0x370b03412596249e => 62
	i64 4006972109285359177, ; 171: System.Xml.XmlDocument => 0x379b9fe74ed9fe49 => 161
	i64 4009997192427317104, ; 172: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 113
	i64 4070326265757318011, ; 173: da\Microsoft.Maui.Controls.resources.dll => 0x387cb42c56683b7b => 301
	i64 4073500526318903918, ; 174: System.Private.Xml.dll => 0x3887fb25779ae26e => 88
	i64 4073631083018132676, ; 175: Microsoft.Maui.Controls.Compatibility.dll => 0x388871e311491cc4 => 189
	i64 4084167866418059728, ; 176: Supabase.Postgrest.dll => 0x38ade10920e9d9d0 => 209
	i64 4109434362916229071, ; 177: ja\Microsoft.TestPlatform.CommunicationUtilities.resources.dll => 0x3907a4c7c567cfcf => 373
	i64 4120493066591692148, ; 178: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 331
	i64 4148881117810174540, ; 179: System.Runtime.InteropServices.JavaScript.dll => 0x3993c9651a66aa4c => 105
	i64 4154383907710350974, ; 180: System.ComponentModel => 0x39a7562737acb67e => 18
	i64 4167269041631776580, ; 181: System.Threading.ThreadPool => 0x39d51d1d3df1cf44 => 146
	i64 4168469861834746866, ; 182: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 118
	i64 4187479170553454871, ; 183: System.Linq.Expressions => 0x3a1cea1e912fa117 => 58
	i64 4201423742386704971, ; 184: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 237
	i64 4205801962323029395, ; 185: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 17
	i64 4235503420553921860, ; 186: System.IO.IsolatedStorage.dll => 0x3ac787eb9b118544 => 52
	i64 4282138915307457788, ; 187: System.Reflection.Emit => 0x3b6d36a7ddc70cfc => 92
	i64 4360412976914417659, ; 188: tr\Microsoft.Maui.Controls.resources.dll => 0x3c834c8002fcc7fb => 326
	i64 4373617458794931033, ; 189: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 55
	i64 4397634830160618470, ; 190: System.Security.SecureString.dll => 0x3d0789940f9be3e6 => 129
	i64 4420739171370228354, ; 191: ko\Microsoft.TestPlatform.CommunicationUtilities.resources => 0x3d599edab22d5a82 => 376
	i64 4431384125090363999, ; 192: es\Microsoft.TestPlatform.CoreUtilities.resources => 0x3d7f70621f50fa5f => 336
	i64 4477672992252076438, ; 193: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 152
	i64 4484706122338676047, ; 194: System.Globalization.Extensions.dll => 0x3e3ce07510042d4f => 41
	i64 4533124835995628778, ; 195: System.Reflection.Emit.dll => 0x3ee8e505540534ea => 92
	i64 4561651694162463980, ; 196: Microsoft.VisualStudio.CodeCoverage.Shim.dll => 0x3f4e3e0c139cccec => 174
	i64 4573907121248322966, ; 197: fr\Microsoft.TestPlatform.CrossPlatEngine.resources => 0x3f79c84b0da2c596 => 368
	i64 4636684751163556186, ; 198: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 281
	i64 4672453897036726049, ; 199: System.IO.FileSystem.Watcher => 0x40d7e4104a437f21 => 50
	i64 4691307545558880431, ; 200: es\Microsoft.TestPlatform.CoreUtilities.resources.dll => 0x411adf5b692590af => 336
	i64 4716677666592453464, ; 201: System.Xml.XmlSerializer => 0x417501590542f358 => 162
	i64 4743821336939966868, ; 202: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 13
	i64 4759461199762736555, ; 203: Xamarin.AndroidX.Lifecycle.Process.dll => 0x420d00be961cc5ab => 255
	i64 4794310189461587505, ; 204: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 219
	i64 4795410492532947900, ; 205: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 276
	i64 4809057822547766521, ; 206: System.Drawing => 0x42bd349c3145ecf9 => 36
	i64 4814660307502931973, ; 207: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 67
	i64 4853321196694829351, ; 208: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 109
	i64 4871824391508510238, ; 209: nb\Microsoft.Maui.Controls.resources.dll => 0x439c3278d7f2c61e => 316
	i64 4953714692329509532, ; 210: sv\Microsoft.Maui.Controls.resources.dll => 0x44bf21444aef129c => 324
	i64 5055365687667823624, ; 211: Xamarin.AndroidX.Activity.Ktx.dll => 0x4628444ef7239408 => 220
	i64 5081566143765835342, ; 212: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 99
	i64 5099468265966638712, ; 213: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 99
	i64 5103417709280584325, ; 214: System.Collections.Specialized => 0x46d2fb5e161b6285 => 11
	i64 5182934613077526976, ; 215: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 11
	i64 5205316157927637098, ; 216: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 262
	i64 5244375036463807528, ; 217: System.Diagnostics.Contracts.dll => 0x48c7c34f4d59fc28 => 25
	i64 5252573413799640170, ; 218: ru\Microsoft.TestPlatform.CrossPlatEngine.resources => 0x48e4e3b0c6303c6a => 386
	i64 5262971552273843408, ; 219: System.Security.Principal.dll => 0x4909d4be0c44c4d0 => 128
	i64 5278787618751394462, ; 220: System.Net.WebClient.dll => 0x4942055efc68329e => 76
	i64 5280980186044710147, ; 221: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x4949cf7fd7123d03 => 254
	i64 5290786973231294105, ; 222: System.Runtime.Loader => 0x496ca6b869b72699 => 109
	i64 5376510917114486089, ; 223: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 280
	i64 5408338804355907810, ; 224: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 278
	i64 5415938286181081424, ; 225: Microsoft.VisualStudio.TestPlatform.ObjectModel => 0x4b29472d2942e150 => 197
	i64 5423376490970181369, ; 226: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 106
	i64 5440320908473006344, ; 227: Microsoft.VisualBasic.Core => 0x4b7fe70acda9f908 => 2
	i64 5446034149219586269, ; 228: System.Diagnostics.Debug => 0x4b94333452e150dd => 26
	i64 5451019430259338467, ; 229: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 233
	i64 5457765010617926378, ; 230: System.Xml.Serialization => 0x4bbde05c557002ea => 157
	i64 5471532531798518949, ; 231: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 324
	i64 5492553108247319490, ; 232: Microsoft.TestPlatform.CrossPlatEngine => 0x4c3977f37f0c93c2 => 199
	i64 5507995362134886206, ; 233: System.Core.dll => 0x4c705499688c873e => 21
	i64 5522859530602327440, ; 234: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 327
	i64 5527431512186326818, ; 235: System.IO.FileSystem.Primitives.dll => 0x4cb561acbc2a8f22 => 49
	i64 5570799893513421663, ; 236: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 43
	i64 5573260873512690141, ; 237: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 126
	i64 5574231584441077149, ; 238: Xamarin.AndroidX.Annotation.Jvm => 0x4d5ba617ae5f8d9d => 223
	i64 5591791169662171124, ; 239: System.Linq.Parallel => 0x4d9a087135e137f4 => 59
	i64 5650097808083101034, ; 240: System.Security.Cryptography.Algorithms.dll => 0x4e692e055d01a56a => 119
	i64 5692067934154308417, ; 241: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 283
	i64 5724799082821825042, ; 242: Xamarin.AndroidX.ExifInterface => 0x4f72926f3e13b212 => 246
	i64 5748194408492950188, ; 243: Supabase.Storage.dll => 0x4fc5b05bfa1be2ac => 211
	i64 5757522595884336624, ; 244: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 232
	i64 5783556987928984683, ; 245: Microsoft.VisualBasic => 0x504352701bbc3c6b => 3
	i64 5896680224035167651, ; 246: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 252
	i64 5959344983920014087, ; 247: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x52b3d8b05c8ef307 => 272
	i64 5979151488806146654, ; 248: System.Formats.Asn1 => 0x52fa3699a489d25e => 38
	i64 5984759512290286505, ; 249: System.Security.Cryptography.Primitives => 0x530e23115c33dba9 => 124
	i64 6102788177522843259, ; 250: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0x54b1758374b3de7b => 272
	i64 6154847252547150359, ; 251: zh-Hans\Microsoft.VisualStudio.TestPlatform.ObjectModel.resources.dll => 0x556a68f766dca217 => 355
	i64 6200764641006662125, ; 252: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 321
	i64 6222399776351216807, ; 253: System.Text.Json.dll => 0x565a67a0ffe264a7 => 137
	i64 6251069312384999852, ; 254: System.Transactions.Local => 0x56c0426b870da1ac => 149
	i64 6254074608930031704, ; 255: zh-Hant\Microsoft.VisualStudio.TestPlatform.ObjectModel.resources => 0x56caefb8a8108858 => 357
	i64 6278736998281604212, ; 256: System.Private.DataContractSerialization => 0x57228e08a4ad6c74 => 85
	i64 6284145129771520194, ; 257: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 90
	i64 6300676701234028427, ; 258: es\Microsoft.Maui.Controls.resources.dll => 0x57708013cda25f8b => 304
	i64 6319713645133255417, ; 259: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 256
	i64 6324923616432364285, ; 260: es\Microsoft.VisualStudio.TestPlatform.ObjectModel.resources.dll => 0x57c6a484acee1afd => 337
	i64 6357457916754632952, ; 261: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 397
	i64 6401687960814735282, ; 262: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 253
	i64 6471714727257221498, ; 263: fi\Microsoft.Maui.Controls.resources.dll => 0x59d026417dd4a97a => 305
	i64 6478287442656530074, ; 264: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 309
	i64 6504860066809920875, ; 265: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 228
	i64 6543695854135597810, ; 266: cs\Microsoft.TestPlatform.CrossPlatEngine.resources => 0x5acfe0b597f2daf2 => 359
	i64 6548213210057960872, ; 267: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 239
	i64 6557084851308642443, ; 268: Xamarin.AndroidX.Window.dll => 0x5aff71ee6c58c08b => 284
	i64 6560151584539558821, ; 269: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 182
	i64 6586820312280503698, ; 270: pl\Microsoft.VisualStudio.TestPlatform.Common.resources.dll => 0x5b69162cf0ce9592 => 381
	i64 6589202984700901502, ; 271: Xamarin.Google.ErrorProne.Annotations.dll => 0x5b718d34180a787e => 289
	i64 6591971792923354531, ; 272: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x5b7b636b7e9765a3 => 254
	i64 6597607856101239634, ; 273: fr\Microsoft.VisualStudio.TestPlatform.ObjectModel.resources.dll => 0x5b8f6963b63dab52 => 339
	i64 6617685658146568858, ; 274: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 133
	i64 6623869560322245061, ; 275: fr\Microsoft.TestPlatform.CommunicationUtilities.resources.dll => 0x5becb6453587c1c5 => 367
	i64 6625210033332858966, ; 276: pl\Microsoft.TestPlatform.CrossPlatEngine.resources => 0x5bf1796c6728b056 => 380
	i64 6691389789501826183, ; 277: cs\Microsoft.TestPlatform.CommunicationUtilities.resources => 0x5cdc978fa0eea487 => 358
	i64 6713440830605852118, ; 278: System.Reflection.TypeExtensions.dll => 0x5d2aeeddb8dd7dd6 => 96
	i64 6717181655064947627, ; 279: cs\Microsoft.VisualStudio.TestPlatform.Common.resources => 0x5d38392049eaabab => 360
	i64 6718033397713755128, ; 280: Microsoft.TestPlatform.CommunicationUtilities => 0x5d3b3fc813f05bf8 => 198
	i64 6724398223859243234, ; 281: Supabase.Postgrest => 0x5d51dc8ea565d8e2 => 209
	i64 6739853162153639747, ; 282: Microsoft.VisualBasic.dll => 0x5d88c4bde075ff43 => 3
	i64 6743165466166707109, ; 283: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 317
	i64 6772837112740759457, ; 284: System.Runtime.InteropServices.JavaScript => 0x5dfdf378527ec7a1 => 105
	i64 6786606130239981554, ; 285: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 33
	i64 6798329586179154312, ; 286: System.Windows => 0x5e5884bd523ca188 => 154
	i64 6803670344757653184, ; 287: tr\Microsoft.TestPlatform.CrossPlatEngine.resources.dll => 0x5e6b7e219423aec0 => 389
	i64 6814185388980153342, ; 288: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 158
	i64 6815302996714479452, ; 289: zh-Hans\Microsoft.TestPlatform.CrossPlatEngine.resources => 0x5e94d1f76bd25f5c => 392
	i64 6876862101832370452, ; 290: System.Xml.Linq => 0x5f6f85a57d108914 => 155
	i64 6894844156784520562, ; 291: System.Numerics.Vectors => 0x5faf683aead1ad72 => 82
	i64 6925458353495495940, ; 292: zh-Hant\Microsoft.TestPlatform.CommunicationUtilities.resources.dll => 0x601c2bae0adc5504 => 394
	i64 6951120618030172113, ; 293: zh-Hans\Microsoft.TestPlatform.CrossPlatEngine.resources.dll => 0x6077575f9c9507d1 => 392
	i64 7011053663211085209, ; 294: Xamarin.AndroidX.Fragment.Ktx => 0x614c442918e5dd99 => 248
	i64 7015894696409149188, ; 295: ja\Microsoft.TestPlatform.CrossPlatEngine.resources.dll => 0x615d770df903af04 => 374
	i64 7053519078139822371, ; 296: zh-Hant\Microsoft.VisualStudio.TestPlatform.ObjectModel.resources.dll => 0x61e3223afcf70123 => 357
	i64 7060896174307865760, ; 297: System.Threading.Tasks.Parallel.dll => 0x61fd57a90988f4a0 => 143
	i64 7083547580668757502, ; 298: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 87
	i64 7101497697220435230, ; 299: System.Configuration => 0x628d9687c0141d1e => 19
	i64 7103753931438454322, ; 300: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 249
	i64 7112547816752919026, ; 301: System.IO.FileSystem => 0x62b4d88e3189b1f2 => 51
	i64 7135566945239978827, ; 302: ru\Microsoft.VisualStudio.TestPlatform.ObjectModel.resources.dll => 0x6306a054b20c534b => 351
	i64 7135772949214115721, ; 303: Microsoft.TestPlatform.PlatformAbstractions => 0x63075bb0bbbfb789 => 196
	i64 7141245265674678182, ; 304: ru\Microsoft.VisualStudio.TestPlatform.Common.resources => 0x631accbbb27aafa6 => 387
	i64 7152184366158511193, ; 305: it\Microsoft.TestPlatform.CrossPlatEngine.resources.dll => 0x6341a9c980fafc59 => 371
	i64 7192745174564810625, ; 306: Xamarin.Android.Glide.GifDecoder.dll => 0x63d1c3a0a1d72f81 => 218
	i64 7253917073024768321, ; 307: ru\Microsoft.TestPlatform.CoreUtilities.resources => 0x64ab17251fc85941 => 350
	i64 7270811800166795866, ; 308: System.Linq => 0x64e71ccf51a90a5a => 61
	i64 7279649523988600175, ; 309: de\Microsoft.VisualStudio.TestPlatform.ObjectModel.resources => 0x650682ac3eae956f => 335
	i64 7299370801165188114, ; 310: System.IO.Pipes.AccessControl.dll => 0x654c9311e74f3c12 => 54
	i64 7316205155833392065, ; 311: Microsoft.Win32.Primitives => 0x658861d38954abc1 => 4
	i64 7330575255854596182, ; 312: it\Microsoft.VisualStudio.TestPlatform.ObjectModel.resources.dll => 0x65bb6f5b2c7b4056 => 341
	i64 7338192458477945005, ; 313: System.Reflection => 0x65d67f295d0740ad => 97
	i64 7349431895026339542, ; 314: Xamarin.Android.Glide.DiskLruCache => 0x65fe6d5e9bf88ed6 => 217
	i64 7377312882064240630, ; 315: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 17
	i64 7488575175965059935, ; 316: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 155
	i64 7489048572193775167, ; 317: System.ObjectModel => 0x67ee71ff6b419e3f => 84
	i64 7496222613193209122, ; 318: System.IdentityModel.Tokens.Jwt => 0x6807eec000a1b522 => 212
	i64 7522767543079988508, ; 319: Parking => 0x68663d391d1eed1c => 0
	i64 7533181980585541824, ; 320: pl\Microsoft.TestPlatform.CoreUtilities.resources => 0x688b3d194d2cc0c0 => 346
	i64 7567961186354546683, ; 321: pt-BR\Microsoft.TestPlatform.CrossPlatEngine.resources.dll => 0x6906cc9a2a9b47fb => 383
	i64 7592577537120840276, ; 322: System.Diagnostics.Process => 0x695e410af5b2aa54 => 29
	i64 7602111570124318452, ; 323: System.Reactive => 0x698020320025a6f4 => 213
	i64 7637303409920963731, ; 324: System.IO.Compression.ZipFile.dll => 0x69fd26fcb637f493 => 45
	i64 7654504624184590948, ; 325: System.Net.Http => 0x6a3a4366801b8264 => 64
	i64 7694700312542370399, ; 326: System.Net.Mail => 0x6ac9112a7e2cda5f => 66
	i64 7714652370974252055, ; 327: System.Private.CoreLib => 0x6b0ff375198b9c17 => 172
	i64 7725404731275645577, ; 328: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x6b3626ac11ce9289 => 257
	i64 7735176074855944702, ; 329: Microsoft.CSharp => 0x6b58dda848e391fe => 1
	i64 7735352534559001595, ; 330: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 292
	i64 7742555799473854801, ; 331: it\Microsoft.Maui.Controls.resources.dll => 0x6b73157a51479951 => 312
	i64 7752363265887618525, ; 332: zh-Hans\Microsoft.TestPlatform.CoreUtilities.resources.dll => 0x6b95ed510904c5dd => 354
	i64 7760934865774298505, ; 333: pl\Microsoft.TestPlatform.CommunicationUtilities.resources.dll => 0x6bb46124276bc589 => 379
	i64 7791074099216502080, ; 334: System.IO.FileSystem.AccessControl.dll => 0x6c1f749d468bcd40 => 47
	i64 7820441508502274321, ; 335: System.Data => 0x6c87ca1e14ff8111 => 24
	i64 7836164640616011524, ; 336: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 225
	i64 7868980864444657808, ; 337: Supabase.Realtime.dll => 0x6d343c679191f090 => 210
	i64 7920660704032196801, ; 338: pt-BR\Microsoft.TestPlatform.CommunicationUtilities.resources => 0x6debd6f1e23c08c1 => 382
	i64 7975724199463739455, ; 339: sk\Microsoft.Maui.Controls.resources.dll => 0x6eaf76e6f785e03f => 323
	i64 8025517457475554965, ; 340: WindowsBase => 0x6f605d9b4786ce95 => 165
	i64 8031450141206250471, ; 341: System.Runtime.Intrinsics.dll => 0x6f757159d9dc03e7 => 108
	i64 8064050204834738623, ; 342: System.Collections.dll => 0x6fe942efa61731bf => 12
	i64 8083354569033831015, ; 343: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 251
	i64 8085230611270010360, ; 344: System.Net.Http.Json.dll => 0x703482674fdd05f8 => 63
	i64 8087206902342787202, ; 345: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 27
	i64 8103644804370223335, ; 346: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 23
	i64 8108129031893776750, ; 347: ko\Microsoft.Maui.Controls.resources.dll => 0x7085dc65530f796e => 314
	i64 8113615946733131500, ; 348: System.Reflection.Extensions => 0x70995ab73cf916ec => 93
	i64 8167236081217502503, ; 349: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 168
	i64 8185542183669246576, ; 350: System.Collections => 0x7198e33f4794aa70 => 12
	i64 8187640529827139739, ; 351: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 296
	i64 8218310118835926725, ; 352: zh-Hans\Microsoft.VisualStudio.TestPlatform.Common.resources => 0x720d4d82b736b6c5 => 393
	i64 8219213124972527414, ; 353: tr\Microsoft.VisualStudio.TestPlatform.ObjectModel.resources.dll => 0x721082ca37373f36 => 353
	i64 8246048515196606205, ; 354: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 194
	i64 8264926008854159966, ; 355: System.Diagnostics.Process.dll => 0x72b2ea6a64a3a25e => 29
	i64 8281768536253590100, ; 356: ja\Microsoft.VisualStudio.TestPlatform.Common.resources => 0x72eec09ae366ea54 => 375
	i64 8290740647658429042, ; 357: System.Runtime.Extensions => 0x730ea0b15c929a72 => 103
	i64 8318905602908530212, ; 358: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 14
	i64 8358562636959632936, ; 359: ja\Microsoft.VisualStudio.TestPlatform.Common.resources.dll => 0x73ff946ec8d4ce28 => 375
	i64 8368701292315763008, ; 360: System.Security.Cryptography => 0x7423997c6fd56140 => 126
	i64 8386351099740279196, ; 361: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x74624de475b9d19c => 329
	i64 8398329775253868912, ; 362: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 234
	i64 8400357532724379117, ; 363: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 266
	i64 8410671156615598628, ; 364: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 91
	i64 8426919725312979251, ; 365: Xamarin.AndroidX.Lifecycle.Process => 0x74f26ed7aa033133 => 255
	i64 8518412311883997971, ; 366: System.Collections.Immutable => 0x76377add7c28e313 => 9
	i64 8559794043086654790, ; 367: fr\Microsoft.TestPlatform.CommunicationUtilities.resources => 0x76ca7f5498af4d46 => 367
	i64 8563666267364444763, ; 368: System.Private.Uri => 0x76d841191140ca5b => 86
	i64 8598790081731763592, ; 369: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x77550a055fc61d88 => 245
	i64 8601935802264776013, ; 370: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 278
	i64 8623059219396073920, ; 371: System.Net.Quic.dll => 0x77ab42ac514299c0 => 71
	i64 8626175481042262068, ; 372: Java.Interop => 0x77b654e585b55834 => 168
	i64 8638972117149407195, ; 373: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 1
	i64 8639588376636138208, ; 374: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 265
	i64 8648495978913578441, ; 375: Microsoft.Win32.Registry.dll => 0x7805a1456889bdc9 => 5
	i64 8677882282824630478, ; 376: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 319
	i64 8684531736582871431, ; 377: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 44
	i64 8725526185868997716, ; 378: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 27
	i64 8727204506373749864, ; 379: Microsoft.TestPlatform.PlatformAbstractions.dll => 0x791d424284987c68 => 196
	i64 8758604146903086415, ; 380: Supabase.Realtime => 0x798cd011086bf54f => 210
	i64 8853378295825400934, ; 381: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 293
	i64 8892012985579047651, ; 382: ja\Microsoft.VisualStudio.TestPlatform.ObjectModel.resources.dll => 0x7b66c6b2cf998ae3 => 343
	i64 8940085421939982114, ; 383: ja\Microsoft.TestPlatform.CrossPlatEngine.resources => 0x7c1190531c617f22 => 374
	i64 8941376889969657626, ; 384: System.Xml.XDocument => 0x7c1626e87187471a => 158
	i64 8951477988056063522, ; 385: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 268
	i64 8954753533646919997, ; 386: System.Runtime.Serialization.Json => 0x7c45ace50032d93d => 112
	i64 9025199618048112714, ; 387: ja\Microsoft.TestPlatform.CommunicationUtilities.resources => 0x7d3ff33c2cbfb84a => 373
	i64 9031828859052788883, ; 388: de\Microsoft.VisualStudio.TestPlatform.ObjectModel.resources.dll => 0x7d57807e9ff68c93 => 335
	i64 9045785047181495996, ; 389: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 329
	i64 9138683372487561558, ; 390: System.Security.Cryptography.Csp => 0x7ed3201bc3e3d156 => 121
	i64 9274423733644249388, ; 391: zh-Hans\Microsoft.TestPlatform.CoreUtilities.resources => 0x80b55f3f6c51492c => 354
	i64 9312692141327339315, ; 392: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 283
	i64 9324707631942237306, ; 393: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 224
	i64 9363564275759486853, ; 394: el\Microsoft.Maui.Controls.resources.dll => 0x81f21019382e9785 => 303
	i64 9367833895579413143, ; 395: Microsoft.TestPlatform.CommunicationUtilities.dll => 0x82013b4b8cdfea97 => 198
	i64 9427266486299436557, ; 396: Microsoft.IdentityModel.Logging.dll => 0x82d460ebe6d2a60d => 186
	i64 9433493255347078749, ; 397: pt-BR\Microsoft.VisualStudio.TestPlatform.ObjectModel.resources => 0x82ea80228c01865d => 349
	i64 9468215723722196442, ; 398: System.Xml.XPath.XDocument.dll => 0x8365dc09353ac5da => 159
	i64 9530086241013453038, ; 399: zh-Hans\Microsoft.TestPlatform.CommunicationUtilities.resources.dll => 0x8441aaf19271d0ee => 391
	i64 9551379474083066910, ; 400: uk\Microsoft.Maui.Controls.resources.dll => 0x848d5106bbadb41e => 327
	i64 9554839972845591462, ; 401: System.ServiceModel.Web => 0x84999c54e32a1ba6 => 131
	i64 9575902398040817096, ; 402: Xamarin.Google.Crypto.Tink.Android.dll => 0x84e4707ee708bdc8 => 288
	i64 9584643793929893533, ; 403: System.IO.dll => 0x85037ebfbbd7f69d => 57
	i64 9659729154652888475, ; 404: System.Text.RegularExpressions => 0x860e407c9991dd9b => 138
	i64 9662334977499516867, ; 405: System.Numerics.dll => 0x8617827802b0cfc3 => 83
	i64 9667360217193089419, ; 406: System.Diagnostics.StackTrace => 0x86295ce5cd89898b => 30
	i64 9678050649315576968, ; 407: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 235
	i64 9702891218465930390, ; 408: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 10
	i64 9717392825338892579, ; 409: pl\Microsoft.TestPlatform.CommunicationUtilities.resources => 0x86db1d4a29411123 => 379
	i64 9773637193738963987, ; 410: ca\Microsoft.Maui.Controls.resources.dll => 0x87a2ef3ea85b4c13 => 299
	i64 9780093022148426479, ; 411: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x87b9dec9576efaef => 285
	i64 9808709177481450983, ; 412: Mono.Android.dll => 0x881f890734e555e7 => 171
	i64 9825649861376906464, ; 413: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 232
	i64 9834056768316610435, ; 414: System.Transactions.dll => 0x8879968718899783 => 150
	i64 9836529246295212050, ; 415: System.Reflection.Metadata => 0x88825f3bbc2ac012 => 94
	i64 9901358901552137447, ; 416: cs\Microsoft.VisualStudio.TestPlatform.ObjectModel.resources.dll => 0x8968b17618aac4e7 => 333
	i64 9907349773706910547, ; 417: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x897dfa20b758db53 => 245
	i64 9916475970990711220, ; 418: de\Microsoft.TestPlatform.CrossPlatEngine.resources.dll => 0x899e665b1a9921b4 => 362
	i64 9933555792566666578, ; 419: System.Linq.Queryable.dll => 0x89db145cf475c552 => 60
	i64 9956195530459977388, ; 420: Microsoft.Maui => 0x8a2b8315b36616ac => 192
	i64 9974604633896246661, ; 421: System.Xml.Serialization.dll => 0x8a6cea111a59dd85 => 157
	i64 10017511394021241210, ; 422: Microsoft.Extensions.Logging.Debug => 0x8b055989ae10717a => 181
	i64 10030245730422138886, ; 423: pl\Microsoft.VisualStudio.TestPlatform.Common.resources => 0x8b3297596bb0a806 => 381
	i64 10038780035334861115, ; 424: System.Net.Http.dll => 0x8b50e941206af13b => 64
	i64 10051358222726253779, ; 425: System.Private.Xml => 0x8b7d990c97ccccd3 => 88
	i64 10078727084704864206, ; 426: System.Net.WebSockets.Client => 0x8bded4e257f117ce => 79
	i64 10089571585547156312, ; 427: System.IO.FileSystem.AccessControl => 0x8c055be67469bb58 => 47
	i64 10092835686693276772, ; 428: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 190
	i64 10105485790837105934, ; 429: System.Threading.Tasks.Parallel => 0x8c3de5c91d9a650e => 143
	i64 10143853363526200146, ; 430: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 301
	i64 10172784693937004642, ; 431: ja\Microsoft.TestPlatform.CoreUtilities.resources.dll => 0x8d2cfdc80aa56062 => 342
	i64 10209869394718195525, ; 432: nl\Microsoft.Maui.Controls.resources.dll => 0x8db0be1ecb4f7f45 => 317
	i64 10226222362177979215, ; 433: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 294
	i64 10229024438826829339, ; 434: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 239
	i64 10236596565285903943, ; 435: tr\Microsoft.VisualStudio.TestPlatform.Common.resources.dll => 0x8e0fb2571ed99e47 => 390
	i64 10236703004850800690, ; 436: System.Net.ServicePoint.dll => 0x8e101325834e4832 => 74
	i64 10242742161382113725, ; 437: ru\Microsoft.TestPlatform.CommunicationUtilities.resources => 0x8e2587ba371901bd => 385
	i64 10245369515835430794, ; 438: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 91
	i64 10321854143672141184, ; 439: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 291
	i64 10347464889647514442, ; 440: Supabase.Gotrue => 0x8f99947e7144434a => 208
	i64 10360651442923773544, ; 441: System.Text.Encoding => 0x8fc86d98211c1e68 => 135
	i64 10364469296367737616, ; 442: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 90
	i64 10376576884623852283, ; 443: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 277
	i64 10406448008575299332, ; 444: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 297
	i64 10430153318873392755, ; 445: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 236
	i64 10506226065143327199, ; 446: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 299
	i64 10546663366131771576, ; 447: System.Runtime.Serialization.Json.dll => 0x925d4673efe8e8b8 => 112
	i64 10566960649245365243, ; 448: System.Globalization.dll => 0x92a562b96dcd13fb => 42
	i64 10595762989148858956, ; 449: System.Xml.XPath.XDocument => 0x930bb64cc472ea4c => 159
	i64 10622622168187877170, ; 450: ja\Microsoft.TestPlatform.CoreUtilities.resources => 0x936b2294b6073732 => 342
	i64 10623836582304434781, ; 451: fr\Microsoft.TestPlatform.CoreUtilities.resources.dll => 0x936f7315880e4a5d => 338
	i64 10659268777568624339, ; 452: ko\Microsoft.VisualStudio.TestPlatform.ObjectModel.resources.dll => 0x93ed547a5c63ded3 => 345
	i64 10670374202010151210, ; 453: Microsoft.Win32.Primitives.dll => 0x9414c8cd7b4ea92a => 4
	i64 10714184849103829812, ; 454: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 103
	i64 10761706286639228993, ; 455: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0x955942d988382841 => 331
	i64 10785150219063592792, ; 456: System.Net.Primitives => 0x95ac8cfb68830758 => 70
	i64 10822644899632537592, ; 457: System.Linq.Queryable => 0x9631c23204ca5ff8 => 60
	i64 10830817578243619689, ; 458: System.Formats.Tar => 0x964ecb340a447b69 => 39
	i64 10847732767863316357, ; 459: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 226
	i64 10899834349646441345, ; 460: System.Web => 0x9743fd975946eb81 => 153
	i64 10943875058216066601, ; 461: System.IO.UnmanagedMemoryStream.dll => 0x97e07461df39de29 => 56
	i64 10964653383833615866, ; 462: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 34
	i64 11002576679268595294, ; 463: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 180
	i64 11009005086950030778, ; 464: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 192
	i64 11019817191295005410, ; 465: Xamarin.AndroidX.Annotation.Jvm.dll => 0x98ee415998e1b2e2 => 223
	i64 11023048688141570732, ; 466: System.Core => 0x98f9bc61168392ac => 21
	i64 11037814507248023548, ; 467: System.Xml => 0x992e31d0412bf7fc => 163
	i64 11071824625609515081, ; 468: Xamarin.Google.ErrorProne.Annotations => 0x99a705d600e0a049 => 289
	i64 11073167957374033680, ; 469: fr\Microsoft.VisualStudio.TestPlatform.ObjectModel.resources => 0x99abcb96cd845f10 => 339
	i64 11103970607964515343, ; 470: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 310
	i64 11136029745144976707, ; 471: Jsr305Binding.dll => 0x9a8b200d4f8cd543 => 287
	i64 11156122287428000958, ; 472: th\Microsoft.Maui.Controls.resources.dll => 0x9ad2821cdcf6dcbe => 325
	i64 11157797727133427779, ; 473: fr\Microsoft.Maui.Controls.resources.dll => 0x9ad875ea9172e843 => 306
	i64 11162124722117608902, ; 474: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 282
	i64 11188319605227840848, ; 475: System.Threading.Overlapped => 0x9b44e5671724e550 => 140
	i64 11220793807500858938, ; 476: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 313
	i64 11226290749488709958, ; 477: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 182
	i64 11235648312900863002, ; 478: System.Reflection.DispatchProxy.dll => 0x9bed0a9c8fac441a => 89
	i64 11329751333533450475, ; 479: System.Threading.Timer.dll => 0x9d3b5ccf6cc500eb => 147
	i64 11340910727871153756, ; 480: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 238
	i64 11347436699239206956, ; 481: System.Xml.XmlSerializer.dll => 0x9d7a318e8162502c => 162
	i64 11392833485892708388, ; 482: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 267
	i64 11432101114902388181, ; 483: System.AppContext => 0x9ea6fb64e61a9dd5 => 6
	i64 11446671985764974897, ; 484: Mono.Android.Export => 0x9edabf8623efc131 => 169
	i64 11448276831755070604, ; 485: System.Diagnostics.TextWriterTraceListener => 0x9ee0731f77186c8c => 31
	i64 11485890710487134646, ; 486: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 107
	i64 11492437505814828710, ; 487: zh-Hant\Microsoft.TestPlatform.CrossPlatEngine.resources => 0x9f7d5705a17816a6 => 395
	i64 11508496261504176197, ; 488: Xamarin.AndroidX.Fragment.Ktx.dll => 0x9fb664600dde1045 => 248
	i64 11517440453979132662, ; 489: Microsoft.IdentityModel.Abstractions.dll => 0x9fd62b122523d2f6 => 184
	i64 11518296021396496455, ; 490: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 311
	i64 11529969570048099689, ; 491: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 282
	i64 11530571088791430846, ; 492: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 179
	i64 11580057168383206117, ; 493: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 221
	i64 11591352189662810718, ; 494: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 275
	i64 11597940890313164233, ; 495: netstandard => 0xa0f429ca8d1805c9 => 167
	i64 11601633546924392839, ; 496: Microsoft.TestPlatform.Utilities.dll => 0xa101483e2aaf0187 => 200
	i64 11672361001936329215, ; 497: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 249
	i64 11692977985522001935, ; 498: System.Threading.Overlapped.dll => 0xa245cd869980680f => 140
	i64 11707554492040141440, ; 499: System.Linq.Parallel.dll => 0xa27996c7fe94da80 => 59
	i64 11743665907891708234, ; 500: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 144
	i64 11855031688536399763, ; 501: vi\Microsoft.Maui.Controls.resources.dll => 0xa485888294361f93 => 328
	i64 11868377108928577036, ; 502: MimeMapping.dll => 0xa4b4f2196610be0c => 203
	i64 11991047634523762324, ; 503: System.Net => 0xa668c24ad493ae94 => 81
	i64 12040886584167504988, ; 504: System.Net.ServicePoint => 0xa719d28d8e121c5c => 74
	i64 12063623837170009990, ; 505: System.Security => 0xa76a99f6ce740786 => 130
	i64 12086882945695899740, ; 506: pt-BR\Microsoft.TestPlatform.CoreUtilities.resources => 0xa7bd3c0003ee605c => 348
	i64 12088833796337653806, ; 507: cs\Microsoft.VisualStudio.TestPlatform.ObjectModel.resources => 0xa7c42a49d371582e => 333
	i64 12092927421164141420, ; 508: tr\Microsoft.VisualStudio.TestPlatform.Common.resources => 0xa7d2b56b2111bb6c => 390
	i64 12096697103934194533, ; 509: System.Diagnostics.Contracts => 0xa7e019eccb7e8365 => 25
	i64 12102847907131387746, ; 510: System.Buffers => 0xa7f5f40c43256f62 => 7
	i64 12123043025855404482, ; 511: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 93
	i64 12123222956711050623, ; 512: ru\Microsoft.VisualStudio.TestPlatform.Common.resources.dll => 0xa83e570c2b9f7d7f => 387
	i64 12137774235383566651, ; 513: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 279
	i64 12145679461940342714, ; 514: System.Text.Json => 0xa88e1f1ebcb62fba => 137
	i64 12191646537372739477, ; 515: Xamarin.Android.Glide.dll => 0xa9316dee7f392795 => 215
	i64 12201331334810686224, ; 516: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 113
	i64 12269460666702402136, ; 517: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 9
	i64 12326995185477451607, ; 518: ko\Microsoft.TestPlatform.CoreUtilities.resources.dll => 0xab1248cf5a557f57 => 344
	i64 12332222936682028543, ; 519: System.Runtime.Handles => 0xab24db6c07db5dff => 104
	i64 12375446203996702057, ; 520: System.Configuration.dll => 0xabbe6ac12e2e0569 => 19
	i64 12439275739440478309, ; 521: Microsoft.IdentityModel.JsonWebTokens => 0xaca12f61007bf865 => 185
	i64 12451044538927396471, ; 522: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 247
	i64 12466513435562512481, ; 523: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 261
	i64 12475113361194491050, ; 524: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 397
	i64 12487638416075308985, ; 525: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 241
	i64 12517810545449516888, ; 526: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 33
	i64 12538491095302438457, ; 527: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 229
	i64 12550732019250633519, ; 528: System.IO.Compression => 0xae2d28465e8e1b2f => 46
	i64 12583435758766487096, ; 529: Microsoft.VisualStudio.TestPlatform.Common.dll => 0xaea1582717397638 => 201
	i64 12629613789220932786, ; 530: es\Microsoft.VisualStudio.TestPlatform.ObjectModel.resources => 0xaf4566d3a4e38cb2 => 337
	i64 12699999919562409296, ; 531: System.Diagnostics.StackTrace.dll => 0xb03f76a3ad01c550 => 30
	i64 12700543734426720211, ; 532: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 230
	i64 12708238894395270091, ; 533: System.IO => 0xb05cbbf17d3ba3cb => 57
	i64 12708922737231849740, ; 534: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 134
	i64 12717050818822477433, ; 535: System.Runtime.Serialization.Xml.dll => 0xb07c0a5786811679 => 114
	i64 12753841065332862057, ; 536: Xamarin.AndroidX.Window => 0xb0febee04cf46c69 => 284
	i64 12808066478489537992, ; 537: Websocket.Client => 0xb1bf649a25f50dc8 => 214
	i64 12828192437253469131, ; 538: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 295
	i64 12835242264250840079, ; 539: System.IO.Pipes => 0xb21ff0d5d6c0740f => 55
	i64 12843321153144804894, ; 540: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 183
	i64 12843770487262409629, ; 541: System.AppContext.dll => 0xb23e3d357debf39d => 6
	i64 12859557719246324186, ; 542: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 77
	i64 12888876061296924636, ; 543: Supabase.Core.dll => 0xb2de7c7d53a397dc => 206
	i64 12982280885948128408, ; 544: Xamarin.AndroidX.CustomView.PoolingContainer => 0xb42a53aec5481c98 => 240
	i64 12989346753972519995, ; 545: ar\Microsoft.Maui.Controls.resources.dll => 0xb4436e0d5ee7c43b => 298
	i64 12990648294856868982, ; 546: pl\Microsoft.VisualStudio.TestPlatform.ObjectModel.resources => 0xb4480dcbf8fa4476 => 347
	i64 13005833372463390146, ; 547: pt-BR\Microsoft.Maui.Controls.resources.dll => 0xb47e008b5d99ddc2 => 319
	i64 13068258254871114833, ; 548: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 111
	i64 13099989568376067714, ; 549: zh-Hans\Microsoft.VisualStudio.TestPlatform.Common.resources.dll => 0xb5cc831b1060d682 => 393
	i64 13129914918964716986, ; 550: Xamarin.AndroidX.Emoji2.dll => 0xb636d40db3fe65ba => 244
	i64 13162308329486800654, ; 551: pt-BR\Microsoft.TestPlatform.CrossPlatEngine.resources => 0xb6a9e9b05339d70e => 383
	i64 13173818576982874404, ; 552: System.Runtime.CompilerServices.VisualC.dll => 0xb6d2ce32a8819924 => 102
	i64 13310112861600168646, ; 553: Supabase.Storage => 0xb8b70520ac093ac6 => 211
	i64 13332124879522271362, ; 554: Microsoft.TestPlatform.CrossPlatEngine.dll => 0xb90538f0f9129082 => 199
	i64 13343850469010654401, ; 555: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 170
	i64 13370592475155966277, ; 556: System.Runtime.Serialization => 0xb98de304062ea945 => 115
	i64 13381594904270902445, ; 557: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 307
	i64 13401370062847626945, ; 558: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 279
	i64 13404347523447273790, ; 559: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 234
	i64 13431476299110033919, ; 560: System.Net.WebClient => 0xba663087f18829ff => 76
	i64 13447930857737371653, ; 561: Microsoft.TestPlatform.CoreUtilities.dll => 0xbaa0a5dd6b734005 => 195
	i64 13454009404024712428, ; 562: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 290
	i64 13458502671294772007, ; 563: de\Microsoft.TestPlatform.CommunicationUtilities.resources.dll => 0xbac634df932bb327 => 361
	i64 13463706743370286408, ; 564: System.Private.DataContractSerialization.dll => 0xbad8b1f3069e0548 => 85
	i64 13465488254036897740, ; 565: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 292
	i64 13491513212026656886, ; 566: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 227
	i64 13540124433173649601, ; 567: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 328
	i64 13572454107664307259, ; 568: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 269
	i64 13578472628727169633, ; 569: System.Xml.XPath => 0xbc706ce9fba5c261 => 160
	i64 13580399111273692417, ; 570: Microsoft.VisualBasic.Core.dll => 0xbc77450a277fbd01 => 2
	i64 13621154251410165619, ; 571: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0xbd080f9faa1acf73 => 240
	i64 13647894001087880694, ; 572: System.Data.dll => 0xbd670f48cb071df6 => 24
	i64 13675589307506966157, ; 573: Xamarin.AndroidX.Activity.Ktx => 0xbdc97404d0153e8d => 220
	i64 13702626353344114072, ; 574: System.Diagnostics.Tools.dll => 0xbe29821198fb6d98 => 32
	i64 13710614125866346983, ; 575: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 117
	i64 13713329104121190199, ; 576: System.Dynamic.Runtime => 0xbe4f8829f32b5737 => 37
	i64 13717397318615465333, ; 577: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 16
	i64 13768883594457632599, ; 578: System.IO.IsolatedStorage => 0xbf14e6adb159cf57 => 52
	i64 13828521679616088467, ; 579: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 293
	i64 13881226289574188012, ; 580: ko\Microsoft.VisualStudio.TestPlatform.Common.resources.dll => 0xc0a405c3b4e213ec => 378
	i64 13881769479078963060, ; 581: System.Console.dll => 0xc0a5f3cade5c6774 => 20
	i64 13911222732217019342, ; 582: System.Security.Cryptography.OpenSsl.dll => 0xc10e975ec1226bce => 123
	i64 13928444506500929300, ; 583: System.Windows.dll => 0xc14bc67b8bba9714 => 154
	i64 13959074834287824816, ; 584: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 247
	i64 13977061573113476558, ; 585: Microsoft.VisualStudio.TestPlatform.ObjectModel.dll => 0xc1f87f727530f5ce => 197
	i64 13979187680923934585, ; 586: tr\Microsoft.TestPlatform.CoreUtilities.resources => 0xc2000d2181fcdf79 => 352
	i64 14075334701871371868, ; 587: System.ServiceModel.Web.dll => 0xc355a25647c5965c => 131
	i64 14124974489674258913, ; 588: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 229
	i64 14125464355221830302, ; 589: System.Threading.dll => 0xc407bafdbc707a9e => 148
	i64 14178052285788134900, ; 590: Xamarin.Android.Glide.Annotations.dll => 0xc4c28f6f75511df4 => 216
	i64 14212104595480609394, ; 591: System.Security.Cryptography.Cng.dll => 0xc53b89d4a4518272 => 120
	i64 14220608275227875801, ; 592: System.Diagnostics.FileVersionInfo.dll => 0xc559bfe1def019d9 => 28
	i64 14226382999226559092, ; 593: System.ServiceProcess => 0xc56e43f6938e2a74 => 132
	i64 14232023429000439693, ; 594: System.Resources.Writer.dll => 0xc5824de7789ba78d => 100
	i64 14250888582875222668, ; 595: cs\Microsoft.VisualStudio.TestPlatform.Common.resources.dll => 0xc5c553a963f2928c => 360
	i64 14254574811015963973, ; 596: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 134
	i64 14261073672896646636, ; 597: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 267
	i64 14298246716367104064, ; 598: System.Web.dll => 0xc66d93a217f4e840 => 153
	i64 14327695147300244862, ; 599: System.Reflection.dll => 0xc6d632d338eb4d7e => 97
	i64 14327709162229390963, ; 600: System.Security.Cryptography.X509Certificates => 0xc6d63f9253cade73 => 125
	i64 14331727281556788554, ; 601: Xamarin.Android.Glide.DiskLruCache.dll => 0xc6e48607a2f7954a => 217
	i64 14346402571976470310, ; 602: System.Net.Ping.dll => 0xc718a920f3686f26 => 69
	i64 14349907877893689639, ; 603: ro\Microsoft.Maui.Controls.resources.dll => 0xc7251d2f956ed127 => 321
	i64 14461014870687870182, ; 604: System.Net.Requests.dll => 0xc8afd8683afdece6 => 72
	i64 14464374589798375073, ; 605: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 322
	i64 14486659737292545672, ; 606: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 252
	i64 14491877563792607819, ; 607: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0xc91d7ddcee4fca4b => 330
	i64 14495724990987328804, ; 608: Xamarin.AndroidX.ResourceInspection.Annotation => 0xc92b2913e18d5d24 => 270
	i64 14540296873554490412, ; 609: ko\Microsoft.TestPlatform.CrossPlatEngine.resources.dll => 0xc9c982f7fcf0342c => 377
	i64 14551742072151931844, ; 610: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 136
	i64 14561513370130550166, ; 611: System.Security.Cryptography.Primitives.dll => 0xca14e3428abb8d96 => 124
	i64 14573961554188510889, ; 612: fr\Microsoft.VisualStudio.TestPlatform.Common.resources => 0xca411cd13f9b26a9 => 369
	i64 14574160591280636898, ; 613: System.Net.Quic => 0xca41d1d72ec783e2 => 71
	i64 14610046442689856844, ; 614: cs\Microsoft.Maui.Controls.resources.dll => 0xcac14fd5107d054c => 300
	i64 14622043554576106986, ; 615: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 111
	i64 14625816794512409936, ; 616: Supabase.Gotrue.dll => 0xcaf956e23adac550 => 208
	i64 14644440854989303794, ; 617: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 262
	i64 14669215534098758659, ; 618: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 177
	i64 14690985099581930927, ; 619: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 152
	i64 14705122255218365489, ; 620: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 314
	i64 14735017007120366644, ; 621: ja\Microsoft.Maui.Controls.resources.dll => 0xcc7d4be604bfbc34 => 313
	i64 14744092281598614090, ; 622: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 330
	i64 14744453227118192070, ; 623: MimeMapping => 0xcc9ed21731bde5c6 => 203
	i64 14792063746108907174, ; 624: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 290
	i64 14832630590065248058, ; 625: System.Security.Claims => 0xcdd816ef5d6e873a => 118
	i64 14840837531691867048, ; 626: pt-BR\Microsoft.VisualStudio.TestPlatform.Common.resources.dll => 0xcdf53f1addc75ba8 => 384
	i64 14852515768018889994, ; 627: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 238
	i64 14865527528615483191, ; 628: ko\Microsoft.VisualStudio.TestPlatform.ObjectModel.resources => 0xce4cf686bdea9737 => 345
	i64 14889905118082851278, ; 629: GoogleGson.dll => 0xcea391d0969961ce => 173
	i64 14904040806490515477, ; 630: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 298
	i64 14912225920358050525, ; 631: System.Security.Principal.Windows => 0xcef2de7759506add => 127
	i64 14935719434541007538, ; 632: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 133
	i64 14954917835170835695, ; 633: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 178
	i64 14984936317414011727, ; 634: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 77
	i64 14987728460634540364, ; 635: System.IO.Compression.dll => 0xcfff1ba06622494c => 46
	i64 14988210264188246988, ; 636: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 241
	i64 15015154896917945444, ; 637: System.Net.Security.dll => 0xd0608bd33642dc64 => 73
	i64 15024878362326791334, ; 638: System.Net.Http.Json => 0xd0831743ebf0f4a6 => 63
	i64 15071021337266399595, ; 639: System.Resources.Reader.dll => 0xd127060e7a18a96b => 98
	i64 15076659072870671916, ; 640: System.ObjectModel.dll => 0xd13b0d8c1620662c => 84
	i64 15111608613780139878, ; 641: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 315
	i64 15114941322287144814, ; 642: pt-BR\Microsoft.VisualStudio.TestPlatform.Common.resources => 0xd1c30f0cdbcc5f6e => 384
	i64 15115185479366240210, ; 643: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 43
	i64 15133485256822086103, ; 644: System.Linq.dll => 0xd204f0a9127dd9d7 => 61
	i64 15138356091203993725, ; 645: Microsoft.IdentityModel.Abstractions => 0xd2163ea89395c07d => 184
	i64 15150743910298169673, ; 646: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 268
	i64 15154054061132759083, ; 647: Supabase => 0xd24e03e104e2402b => 205
	i64 15203009853192377507, ; 648: pt\Microsoft.Maui.Controls.resources.dll => 0xd2fbf0e9984b94a3 => 320
	i64 15215108431144787653, ; 649: ko\Microsoft.TestPlatform.CommunicationUtilities.resources.dll => 0xd326ec81496f9ec5 => 376
	i64 15227001540531775957, ; 650: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 176
	i64 15234786388537674379, ; 651: System.Dynamic.Runtime.dll => 0xd36cd580c5be8a8b => 37
	i64 15250465174479574862, ; 652: System.Globalization.Calendars.dll => 0xd3a489469852174e => 40
	i64 15272359115529052076, ; 653: Xamarin.AndroidX.Collection.Ktx => 0xd3f251b2fb4edfac => 231
	i64 15279429628684179188, ; 654: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 296
	i64 15299439993936780255, ; 655: System.Xml.XPath.dll => 0xd452879d55019bdf => 160
	i64 15336207514779943596, ; 656: fr\Microsoft.TestPlatform.CrossPlatEngine.resources.dll => 0xd4d5277ae02282ac => 368
	i64 15338463749992804988, ; 657: System.Resources.Reader => 0xd4dd2b839286f27c => 98
	i64 15346856666220527370, ; 658: tr\Microsoft.TestPlatform.CrossPlatEngine.resources => 0xd4fafcd3a8e8ff0a => 389
	i64 15370334346939861994, ; 659: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 236
	i64 15391712275433856905, ; 660: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 178
	i64 15414365045750914537, ; 661: Parking.dll => 0xd5ead3571e2e5de9 => 0
	i64 15475341621120354588, ; 662: tr\Microsoft.TestPlatform.CoreUtilities.resources.dll => 0xd6c3753668b2491c => 352
	i64 15526743539506359484, ; 663: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 135
	i64 15527772828719725935, ; 664: System.Console => 0xd77dbb1e38cd3d6f => 20
	i64 15530465045505749832, ; 665: System.Net.HttpListener.dll => 0xd7874bacc9fdb348 => 65
	i64 15536481058354060254, ; 666: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 302
	i64 15541854775306130054, ; 667: System.Security.Cryptography.X509Certificates.dll => 0xd7afc292e8d49286 => 125
	i64 15557562860424774966, ; 668: System.Net.Sockets => 0xd7e790fe7a6dc536 => 75
	i64 15582737692548360875, ; 669: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 260
	i64 15609085926864131306, ; 670: System.dll => 0xd89e9cf3334914ea => 164
	i64 15661133872274321916, ; 671: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 156
	i64 15710114879900314733, ; 672: Microsoft.Win32.Registry => 0xda058a3f5d096c6d => 5
	i64 15755368083429170162, ; 673: System.IO.FileSystem.Primitives => 0xdaa64fcbde529bf2 => 49
	i64 15777549416145007739, ; 674: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 274
	i64 15783653065526199428, ; 675: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 303
	i64 15817206913877585035, ; 676: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 144
	i64 15847085070278954535, ; 677: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 139
	i64 15885744048853936810, ; 678: System.Resources.Writer => 0xdc75800bd0b6eaaa => 100
	i64 15890926625037132090, ; 679: tr\Microsoft.TestPlatform.CommunicationUtilities.resources.dll => 0xdc87e9925d22a13a => 388
	i64 15928521404965645318, ; 680: Microsoft.Maui.Controls.Compatibility => 0xdd0d79d32c2eec06 => 189
	i64 15934062614519587357, ; 681: System.Security.Cryptography.OpenSsl => 0xdd2129868f45a21d => 123
	i64 15937190497610202713, ; 682: System.Security.Cryptography.Cng => 0xdd2c465197c97e59 => 120
	i64 15963349826457351533, ; 683: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 142
	i64 15971679995444160383, ; 684: System.Formats.Tar.dll => 0xdda6ce5592a9677f => 39
	i64 16018552496348375205, ; 685: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 68
	i64 16054465462676478687, ; 686: System.Globalization.Extensions => 0xdecceb47319bdadf => 41
	i64 16056281320585338352, ; 687: ru\Microsoft.Maui.Controls.resources.dll => 0xded35eca8f3a9df0 => 322
	i64 16154507427712707110, ; 688: System => 0xe03056ea4e39aa26 => 164
	i64 16178945028308640265, ; 689: it\Microsoft.VisualStudio.TestPlatform.Common.resources => 0xe08728c894e8a209 => 372
	i64 16219561732052121626, ; 690: System.Net.Security => 0xe1177575db7c781a => 73
	i64 16288847719894691167, ; 691: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 316
	i64 16315482530584035869, ; 692: WindowsBase.dll => 0xe26c3ceb1e8d821d => 165
	i64 16321164108206115771, ; 693: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 180
	i64 16328914084158521434, ; 694: it\Microsoft.TestPlatform.CrossPlatEngine.resources => 0xe29bf4d86224405a => 371
	i64 16331030441871676004, ; 695: de\Microsoft.VisualStudio.TestPlatform.Common.resources.dll => 0xe2a379a94fda1264 => 363
	i64 16337011941688632206, ; 696: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 127
	i64 16361933716545543812, ; 697: Xamarin.AndroidX.ExifInterface.dll => 0xe3114406a52f1e84 => 246
	i64 16423015068819898779, ; 698: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 295
	i64 16454459195343277943, ; 699: System.Net.NetworkInformation => 0xe459fb756d988f77 => 68
	i64 16496768397145114574, ; 700: Mono.Android.Export.dll => 0xe4f04b741db987ce => 169
	i64 16589693266713801121, ; 701: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xe63a6e214f2a71a1 => 259
	i64 16621146507174665210, ; 702: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 233
	i64 16649148416072044166, ; 703: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 194
	i64 16677317093839702854, ; 704: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 266
	i64 16702652415771857902, ; 705: System.ValueTuple => 0xe7cbbde0b0e6d3ee => 151
	i64 16709499819875633724, ; 706: System.IO.Compression.ZipFile => 0xe7e4118e32240a3c => 45
	i64 16737807731308835127, ; 707: System.Runtime.Intrinsics => 0xe848a3736f733137 => 108
	i64 16758309481308491337, ; 708: System.IO.FileSystem.DriveInfo => 0xe89179af15740e49 => 48
	i64 16762783179241323229, ; 709: System.Reflection.TypeExtensions => 0xe8a15e7d0d927add => 96
	i64 16765015072123548030, ; 710: System.Diagnostics.TextWriterTraceListener.dll => 0xe8a94c621bfe717e => 31
	i64 16803648858859583026, ; 711: ms\Microsoft.Maui.Controls.resources.dll => 0xe9328d9b8ab93632 => 315
	i64 16822611501064131242, ; 712: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 23
	i64 16833383113903931215, ; 713: mscorlib => 0xe99c30c1484d7f4f => 166
	i64 16856067890322379635, ; 714: System.Data.Common.dll => 0xe9ecc87060889373 => 22
	i64 16865005275003574711, ; 715: es\Microsoft.TestPlatform.CommunicationUtilities.resources => 0xea0c88f167ad59b7 => 364
	i64 16890310621557459193, ; 716: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 138
	i64 16898105457700624756, ; 717: es\Microsoft.TestPlatform.CrossPlatEngine.resources => 0xea8221623f55d974 => 365
	i64 16933958494752847024, ; 718: System.Net.WebProxy.dll => 0xeb018187f0f3b4b0 => 78
	i64 16942731696432749159, ; 719: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 323
	i64 16970469619770477956, ; 720: zh-Hans\Microsoft.VisualStudio.TestPlatform.ObjectModel.resources => 0xeb833834adfa4d84 => 355
	i64 16977952268158210142, ; 721: System.IO.Pipes.AccessControl => 0xeb9dcda2851b905e => 54
	i64 16989020923549080504, ; 722: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xebc52084add25bb8 => 259
	i64 16990511923927238273, ; 723: es\Microsoft.VisualStudio.TestPlatform.Common.resources.dll => 0xebca6c9341b8c681 => 366
	i64 16998075588627545693, ; 724: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 264
	i64 17008137082415910100, ; 725: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 10
	i64 17024911836938395553, ; 726: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 222
	i64 17031351772568316411, ; 727: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 263
	i64 17037200463775726619, ; 728: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 250
	i64 17062143951396181894, ; 729: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 16
	i64 17087678693691554459, ; 730: de\Microsoft.TestPlatform.CrossPlatEngine.resources => 0xed23a13ccd7efa9b => 362
	i64 17111680674646691228, ; 731: pt-BR\Microsoft.VisualStudio.TestPlatform.ObjectModel.resources.dll => 0xed78e6e97a3b8d9c => 349
	i64 17118171214553292978, ; 732: System.Threading.Channels => 0xed8ff6060fc420b2 => 139
	i64 17137864900836977098, ; 733: Microsoft.IdentityModel.Tokens => 0xedd5ed53b705e9ca => 187
	i64 17169790565222164104, ; 734: ko\Microsoft.TestPlatform.CoreUtilities.resources => 0xee47598cb3eba688 => 344
	i64 17176940277450956538, ; 735: cs\Microsoft.TestPlatform.CoreUtilities.resources => 0xee60c02ccd905efa => 332
	i64 17187273293601214786, ; 736: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 13
	i64 17201328579425343169, ; 737: System.ComponentModel.EventBasedAsync => 0xeeb76534d96c16c1 => 15
	i64 17202182880784296190, ; 738: System.Security.Cryptography.Encoding.dll => 0xeeba6e30627428fe => 122
	i64 17203614576212522419, ; 739: pl\Microsoft.Maui.Controls.resources.dll => 0xeebf844ef3e135b3 => 318
	i64 17230721278011714856, ; 740: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 87
	i64 17234219099804750107, ; 741: System.Transactions.Local.dll => 0xef2c3ef5e11d511b => 149
	i64 17234616483251655377, ; 742: zh-Hans\Microsoft.TestPlatform.CommunicationUtilities.resources => 0xef2da860ec4e92d1 => 391
	i64 17260702271250283638, ; 743: System.Data.Common => 0xef8a5543bba6bc76 => 22
	i64 17310278548634113468, ; 744: hi\Microsoft.Maui.Controls.resources.dll => 0xf03a76a04e6695bc => 308
	i64 17333249706306540043, ; 745: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 34
	i64 17338386382517543202, ; 746: System.Net.WebSockets.Client.dll => 0xf09e528d5c6da122 => 79
	i64 17342750010158924305, ; 747: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 308
	i64 17344678509612454043, ; 748: it\Microsoft.TestPlatform.CommunicationUtilities.resources.dll => 0xf0b4ad355ccd509b => 370
	i64 17360349973592121190, ; 749: Xamarin.Google.Crypto.Tink.Android => 0xf0ec5a52686b9f66 => 288
	i64 17470386307322966175, ; 750: System.Threading.Timer => 0xf27347c8d0d5709f => 147
	i64 17509662556995089465, ; 751: System.Net.WebSockets.dll => 0xf2fed1534ea67439 => 80
	i64 17514990004910432069, ; 752: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 306
	i64 17522591619082469157, ; 753: GoogleGson => 0xf32cc03d27a5bf25 => 173
	i64 17576078694130054946, ; 754: Supabase.dll => 0xf3eac67343eef722 => 205
	i64 17590473451926037903, ; 755: Xamarin.Android.Glide => 0xf41dea67fcfda58f => 215
	i64 17608862831326185980, ; 756: Microsoft.IO.RecyclableMemoryStream.dll => 0xf45f3f7307c6c9fc => 188
	i64 17614600256232167694, ; 757: zh-Hant\Microsoft.TestPlatform.CoreUtilities.resources => 0xf473a19b5d39190e => 356
	i64 17623389608345532001, ; 758: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 318
	i64 17627500474728259406, ; 759: System.Globalization => 0xf4a176498a351f4e => 42
	i64 17630110890370250853, ; 760: pt-BR\Microsoft.TestPlatform.CommunicationUtilities.resources.dll => 0xf4aabc724b43b865 => 382
	i64 17685921127322830888, ; 761: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 26
	i64 17704177640604968747, ; 762: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 261
	i64 17710060891934109755, ; 763: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 258
	i64 17712670374920797664, ; 764: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 107
	i64 17725622694045212979, ; 765: ru\Microsoft.TestPlatform.CrossPlatEngine.resources.dll => 0xf5fe0fed052ae133 => 386
	i64 17777860260071588075, ; 766: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 110
	i64 17790600151040787804, ; 767: Microsoft.IdentityModel.Logging => 0xf6e4e89427cc055c => 186
	i64 17827813215687577648, ; 768: hr\Microsoft.Maui.Controls.resources.dll => 0xf7691da9f3129030 => 309
	i64 17838668724098252521, ; 769: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 7
	i64 17891337867145587222, ; 770: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 291
	i64 17928294245072900555, ; 771: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 44
	i64 17942426894774770628, ; 772: de\Microsoft.Maui.Controls.resources.dll => 0xf9004e329f771bc4 => 302
	i64 17945899804122884383, ; 773: ru\Microsoft.TestPlatform.CommunicationUtilities.resources.dll => 0xf90ca4ca577f291f => 385
	i64 17958341848870185232, ; 774: Microsoft.IO.RecyclableMemoryStream => 0xf938d8c3a0f06910 => 188
	i64 17992315986609351877, ; 775: System.Xml.XmlDocument.dll => 0xf9b18c0ffc6eacc5 => 161
	i64 18025913125965088385, ; 776: System.Threading => 0xfa28e87b91334681 => 148
	i64 18028992993990630806, ; 777: it\Microsoft.TestPlatform.CoreUtilities.resources => 0xfa33d99b38d15d96 => 340
	i64 18099689198537119569, ; 778: Supabase.Functions => 0xfb2f036e07c79751 => 207
	i64 18116111925905154859, ; 779: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 227
	i64 18121036031235206392, ; 780: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 263
	i64 18146411883821974900, ; 781: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 38
	i64 18146811631844267958, ; 782: System.ComponentModel.EventBasedAsync.dll => 0xfbd66d08820117b6 => 15
	i64 18225059387460068507, ; 783: System.Threading.ThreadPool.dll => 0xfcec6af3cff4a49b => 146
	i64 18226465428055663763, ; 784: Supabase.Core => 0xfcf169bd26322493 => 206
	i64 18245806341561545090, ; 785: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 8
	i64 18250058964007765534, ; 786: es\Microsoft.TestPlatform.CrossPlatEngine.resources.dll => 0xfd453bef4f9dc61e => 365
	i64 18260797123374478311, ; 787: Xamarin.AndroidX.Emoji2 => 0xfd6b623bde35f3e7 => 244
	i64 18305135509493619199, ; 788: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 265
	i64 18318849532986632368, ; 789: System.Security.dll => 0xfe39a097c37fa8b0 => 130
	i64 18324163916253801303, ; 790: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 312
	i64 18342408478508122430, ; 791: id\Microsoft.Maui.Controls.resources.dll => 0xfe8d53543697013e => 311
	i64 18358161419737137786, ; 792: he\Microsoft.Maui.Controls.resources.dll => 0xfec54a8ba8b6827a => 307
	i64 18380184030268848184, ; 793: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 281
	i64 18417063591209321014, ; 794: zh-Hant\Microsoft.VisualStudio.TestPlatform.Common.resources => 0xff968dc227cfc236 => 396
	i64 18439108438687598470 ; 795: System.Reflection.Metadata.dll => 0xffe4df6e2ee1c786 => 94
], align 8

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [796 x i32] [
	i32 243, ; 0
	i32 372, ; 1
	i32 183, ; 2
	i32 171, ; 3
	i32 193, ; 4
	i32 58, ; 5
	i32 358, ; 6
	i32 230, ; 7
	i32 151, ; 8
	i32 271, ; 9
	i32 274, ; 10
	i32 237, ; 11
	i32 200, ; 12
	i32 132, ; 13
	i32 366, ; 14
	i32 334, ; 15
	i32 370, ; 16
	i32 388, ; 17
	i32 56, ; 18
	i32 273, ; 19
	i32 213, ; 20
	i32 378, ; 21
	i32 95, ; 22
	i32 195, ; 23
	i32 256, ; 24
	i32 129, ; 25
	i32 359, ; 26
	i32 343, ; 27
	i32 145, ; 28
	i32 231, ; 29
	i32 18, ; 30
	i32 310, ; 31
	i32 242, ; 32
	i32 257, ; 33
	i32 150, ; 34
	i32 104, ; 35
	i32 340, ; 36
	i32 363, ; 37
	i32 95, ; 38
	i32 202, ; 39
	i32 286, ; 40
	i32 369, ; 41
	i32 350, ; 42
	i32 380, ; 43
	i32 36, ; 44
	i32 28, ; 45
	i32 226, ; 46
	i32 264, ; 47
	i32 50, ; 48
	i32 115, ; 49
	i32 347, ; 50
	i32 70, ; 51
	i32 190, ; 52
	i32 65, ; 53
	i32 174, ; 54
	i32 170, ; 55
	i32 145, ; 56
	i32 353, ; 57
	i32 285, ; 58
	i32 341, ; 59
	i32 225, ; 60
	i32 395, ; 61
	i32 260, ; 62
	i32 250, ; 63
	i32 40, ; 64
	i32 89, ; 65
	i32 81, ; 66
	i32 396, ; 67
	i32 332, ; 68
	i32 204, ; 69
	i32 66, ; 70
	i32 62, ; 71
	i32 86, ; 72
	i32 224, ; 73
	i32 106, ; 74
	i32 304, ; 75
	i32 271, ; 76
	i32 334, ; 77
	i32 102, ; 78
	i32 35, ; 79
	i32 221, ; 80
	i32 326, ; 81
	i32 273, ; 82
	i32 348, ; 83
	i32 377, ; 84
	i32 191, ; 85
	i32 356, ; 86
	i32 119, ; 87
	i32 258, ; 88
	i32 142, ; 89
	i32 141, ; 90
	i32 294, ; 91
	i32 53, ; 92
	i32 35, ; 93
	i32 141, ; 94
	i32 346, ; 95
	i32 204, ; 96
	i32 207, ; 97
	i32 218, ; 98
	i32 228, ; 99
	i32 181, ; 100
	i32 242, ; 101
	i32 8, ; 102
	i32 14, ; 103
	i32 270, ; 104
	i32 361, ; 105
	i32 51, ; 106
	i32 253, ; 107
	i32 136, ; 108
	i32 101, ; 109
	i32 364, ; 110
	i32 235, ; 111
	i32 280, ; 112
	i32 116, ; 113
	i32 201, ; 114
	i32 219, ; 115
	i32 163, ; 116
	i32 325, ; 117
	i32 187, ; 118
	i32 166, ; 119
	i32 67, ; 120
	i32 338, ; 121
	i32 177, ; 122
	i32 300, ; 123
	i32 80, ; 124
	i32 101, ; 125
	i32 275, ; 126
	i32 185, ; 127
	i32 117, ; 128
	i32 394, ; 129
	i32 305, ; 130
	i32 287, ; 131
	i32 214, ; 132
	i32 78, ; 133
	i32 286, ; 134
	i32 114, ; 135
	i32 121, ; 136
	i32 48, ; 137
	i32 351, ; 138
	i32 202, ; 139
	i32 128, ; 140
	i32 251, ; 141
	i32 222, ; 142
	i32 82, ; 143
	i32 110, ; 144
	i32 75, ; 145
	i32 297, ; 146
	i32 212, ; 147
	i32 193, ; 148
	i32 53, ; 149
	i32 277, ; 150
	i32 175, ; 151
	i32 69, ; 152
	i32 276, ; 153
	i32 83, ; 154
	i32 172, ; 155
	i32 320, ; 156
	i32 116, ; 157
	i32 176, ; 158
	i32 156, ; 159
	i32 175, ; 160
	i32 216, ; 161
	i32 167, ; 162
	i32 269, ; 163
	i32 243, ; 164
	i32 179, ; 165
	i32 32, ; 166
	i32 191, ; 167
	i32 122, ; 168
	i32 72, ; 169
	i32 62, ; 170
	i32 161, ; 171
	i32 113, ; 172
	i32 301, ; 173
	i32 88, ; 174
	i32 189, ; 175
	i32 209, ; 176
	i32 373, ; 177
	i32 331, ; 178
	i32 105, ; 179
	i32 18, ; 180
	i32 146, ; 181
	i32 118, ; 182
	i32 58, ; 183
	i32 237, ; 184
	i32 17, ; 185
	i32 52, ; 186
	i32 92, ; 187
	i32 326, ; 188
	i32 55, ; 189
	i32 129, ; 190
	i32 376, ; 191
	i32 336, ; 192
	i32 152, ; 193
	i32 41, ; 194
	i32 92, ; 195
	i32 174, ; 196
	i32 368, ; 197
	i32 281, ; 198
	i32 50, ; 199
	i32 336, ; 200
	i32 162, ; 201
	i32 13, ; 202
	i32 255, ; 203
	i32 219, ; 204
	i32 276, ; 205
	i32 36, ; 206
	i32 67, ; 207
	i32 109, ; 208
	i32 316, ; 209
	i32 324, ; 210
	i32 220, ; 211
	i32 99, ; 212
	i32 99, ; 213
	i32 11, ; 214
	i32 11, ; 215
	i32 262, ; 216
	i32 25, ; 217
	i32 386, ; 218
	i32 128, ; 219
	i32 76, ; 220
	i32 254, ; 221
	i32 109, ; 222
	i32 280, ; 223
	i32 278, ; 224
	i32 197, ; 225
	i32 106, ; 226
	i32 2, ; 227
	i32 26, ; 228
	i32 233, ; 229
	i32 157, ; 230
	i32 324, ; 231
	i32 199, ; 232
	i32 21, ; 233
	i32 327, ; 234
	i32 49, ; 235
	i32 43, ; 236
	i32 126, ; 237
	i32 223, ; 238
	i32 59, ; 239
	i32 119, ; 240
	i32 283, ; 241
	i32 246, ; 242
	i32 211, ; 243
	i32 232, ; 244
	i32 3, ; 245
	i32 252, ; 246
	i32 272, ; 247
	i32 38, ; 248
	i32 124, ; 249
	i32 272, ; 250
	i32 355, ; 251
	i32 321, ; 252
	i32 137, ; 253
	i32 149, ; 254
	i32 357, ; 255
	i32 85, ; 256
	i32 90, ; 257
	i32 304, ; 258
	i32 256, ; 259
	i32 337, ; 260
	i32 397, ; 261
	i32 253, ; 262
	i32 305, ; 263
	i32 309, ; 264
	i32 228, ; 265
	i32 359, ; 266
	i32 239, ; 267
	i32 284, ; 268
	i32 182, ; 269
	i32 381, ; 270
	i32 289, ; 271
	i32 254, ; 272
	i32 339, ; 273
	i32 133, ; 274
	i32 367, ; 275
	i32 380, ; 276
	i32 358, ; 277
	i32 96, ; 278
	i32 360, ; 279
	i32 198, ; 280
	i32 209, ; 281
	i32 3, ; 282
	i32 317, ; 283
	i32 105, ; 284
	i32 33, ; 285
	i32 154, ; 286
	i32 389, ; 287
	i32 158, ; 288
	i32 392, ; 289
	i32 155, ; 290
	i32 82, ; 291
	i32 394, ; 292
	i32 392, ; 293
	i32 248, ; 294
	i32 374, ; 295
	i32 357, ; 296
	i32 143, ; 297
	i32 87, ; 298
	i32 19, ; 299
	i32 249, ; 300
	i32 51, ; 301
	i32 351, ; 302
	i32 196, ; 303
	i32 387, ; 304
	i32 371, ; 305
	i32 218, ; 306
	i32 350, ; 307
	i32 61, ; 308
	i32 335, ; 309
	i32 54, ; 310
	i32 4, ; 311
	i32 341, ; 312
	i32 97, ; 313
	i32 217, ; 314
	i32 17, ; 315
	i32 155, ; 316
	i32 84, ; 317
	i32 212, ; 318
	i32 0, ; 319
	i32 346, ; 320
	i32 383, ; 321
	i32 29, ; 322
	i32 213, ; 323
	i32 45, ; 324
	i32 64, ; 325
	i32 66, ; 326
	i32 172, ; 327
	i32 257, ; 328
	i32 1, ; 329
	i32 292, ; 330
	i32 312, ; 331
	i32 354, ; 332
	i32 379, ; 333
	i32 47, ; 334
	i32 24, ; 335
	i32 225, ; 336
	i32 210, ; 337
	i32 382, ; 338
	i32 323, ; 339
	i32 165, ; 340
	i32 108, ; 341
	i32 12, ; 342
	i32 251, ; 343
	i32 63, ; 344
	i32 27, ; 345
	i32 23, ; 346
	i32 314, ; 347
	i32 93, ; 348
	i32 168, ; 349
	i32 12, ; 350
	i32 296, ; 351
	i32 393, ; 352
	i32 353, ; 353
	i32 194, ; 354
	i32 29, ; 355
	i32 375, ; 356
	i32 103, ; 357
	i32 14, ; 358
	i32 375, ; 359
	i32 126, ; 360
	i32 329, ; 361
	i32 234, ; 362
	i32 266, ; 363
	i32 91, ; 364
	i32 255, ; 365
	i32 9, ; 366
	i32 367, ; 367
	i32 86, ; 368
	i32 245, ; 369
	i32 278, ; 370
	i32 71, ; 371
	i32 168, ; 372
	i32 1, ; 373
	i32 265, ; 374
	i32 5, ; 375
	i32 319, ; 376
	i32 44, ; 377
	i32 27, ; 378
	i32 196, ; 379
	i32 210, ; 380
	i32 293, ; 381
	i32 343, ; 382
	i32 374, ; 383
	i32 158, ; 384
	i32 268, ; 385
	i32 112, ; 386
	i32 373, ; 387
	i32 335, ; 388
	i32 329, ; 389
	i32 121, ; 390
	i32 354, ; 391
	i32 283, ; 392
	i32 224, ; 393
	i32 303, ; 394
	i32 198, ; 395
	i32 186, ; 396
	i32 349, ; 397
	i32 159, ; 398
	i32 391, ; 399
	i32 327, ; 400
	i32 131, ; 401
	i32 288, ; 402
	i32 57, ; 403
	i32 138, ; 404
	i32 83, ; 405
	i32 30, ; 406
	i32 235, ; 407
	i32 10, ; 408
	i32 379, ; 409
	i32 299, ; 410
	i32 285, ; 411
	i32 171, ; 412
	i32 232, ; 413
	i32 150, ; 414
	i32 94, ; 415
	i32 333, ; 416
	i32 245, ; 417
	i32 362, ; 418
	i32 60, ; 419
	i32 192, ; 420
	i32 157, ; 421
	i32 181, ; 422
	i32 381, ; 423
	i32 64, ; 424
	i32 88, ; 425
	i32 79, ; 426
	i32 47, ; 427
	i32 190, ; 428
	i32 143, ; 429
	i32 301, ; 430
	i32 342, ; 431
	i32 317, ; 432
	i32 294, ; 433
	i32 239, ; 434
	i32 390, ; 435
	i32 74, ; 436
	i32 385, ; 437
	i32 91, ; 438
	i32 291, ; 439
	i32 208, ; 440
	i32 135, ; 441
	i32 90, ; 442
	i32 277, ; 443
	i32 297, ; 444
	i32 236, ; 445
	i32 299, ; 446
	i32 112, ; 447
	i32 42, ; 448
	i32 159, ; 449
	i32 342, ; 450
	i32 338, ; 451
	i32 345, ; 452
	i32 4, ; 453
	i32 103, ; 454
	i32 331, ; 455
	i32 70, ; 456
	i32 60, ; 457
	i32 39, ; 458
	i32 226, ; 459
	i32 153, ; 460
	i32 56, ; 461
	i32 34, ; 462
	i32 180, ; 463
	i32 192, ; 464
	i32 223, ; 465
	i32 21, ; 466
	i32 163, ; 467
	i32 289, ; 468
	i32 339, ; 469
	i32 310, ; 470
	i32 287, ; 471
	i32 325, ; 472
	i32 306, ; 473
	i32 282, ; 474
	i32 140, ; 475
	i32 313, ; 476
	i32 182, ; 477
	i32 89, ; 478
	i32 147, ; 479
	i32 238, ; 480
	i32 162, ; 481
	i32 267, ; 482
	i32 6, ; 483
	i32 169, ; 484
	i32 31, ; 485
	i32 107, ; 486
	i32 395, ; 487
	i32 248, ; 488
	i32 184, ; 489
	i32 311, ; 490
	i32 282, ; 491
	i32 179, ; 492
	i32 221, ; 493
	i32 275, ; 494
	i32 167, ; 495
	i32 200, ; 496
	i32 249, ; 497
	i32 140, ; 498
	i32 59, ; 499
	i32 144, ; 500
	i32 328, ; 501
	i32 203, ; 502
	i32 81, ; 503
	i32 74, ; 504
	i32 130, ; 505
	i32 348, ; 506
	i32 333, ; 507
	i32 390, ; 508
	i32 25, ; 509
	i32 7, ; 510
	i32 93, ; 511
	i32 387, ; 512
	i32 279, ; 513
	i32 137, ; 514
	i32 215, ; 515
	i32 113, ; 516
	i32 9, ; 517
	i32 344, ; 518
	i32 104, ; 519
	i32 19, ; 520
	i32 185, ; 521
	i32 247, ; 522
	i32 261, ; 523
	i32 397, ; 524
	i32 241, ; 525
	i32 33, ; 526
	i32 229, ; 527
	i32 46, ; 528
	i32 201, ; 529
	i32 337, ; 530
	i32 30, ; 531
	i32 230, ; 532
	i32 57, ; 533
	i32 134, ; 534
	i32 114, ; 535
	i32 284, ; 536
	i32 214, ; 537
	i32 295, ; 538
	i32 55, ; 539
	i32 183, ; 540
	i32 6, ; 541
	i32 77, ; 542
	i32 206, ; 543
	i32 240, ; 544
	i32 298, ; 545
	i32 347, ; 546
	i32 319, ; 547
	i32 111, ; 548
	i32 393, ; 549
	i32 244, ; 550
	i32 383, ; 551
	i32 102, ; 552
	i32 211, ; 553
	i32 199, ; 554
	i32 170, ; 555
	i32 115, ; 556
	i32 307, ; 557
	i32 279, ; 558
	i32 234, ; 559
	i32 76, ; 560
	i32 195, ; 561
	i32 290, ; 562
	i32 361, ; 563
	i32 85, ; 564
	i32 292, ; 565
	i32 227, ; 566
	i32 328, ; 567
	i32 269, ; 568
	i32 160, ; 569
	i32 2, ; 570
	i32 240, ; 571
	i32 24, ; 572
	i32 220, ; 573
	i32 32, ; 574
	i32 117, ; 575
	i32 37, ; 576
	i32 16, ; 577
	i32 52, ; 578
	i32 293, ; 579
	i32 378, ; 580
	i32 20, ; 581
	i32 123, ; 582
	i32 154, ; 583
	i32 247, ; 584
	i32 197, ; 585
	i32 352, ; 586
	i32 131, ; 587
	i32 229, ; 588
	i32 148, ; 589
	i32 216, ; 590
	i32 120, ; 591
	i32 28, ; 592
	i32 132, ; 593
	i32 100, ; 594
	i32 360, ; 595
	i32 134, ; 596
	i32 267, ; 597
	i32 153, ; 598
	i32 97, ; 599
	i32 125, ; 600
	i32 217, ; 601
	i32 69, ; 602
	i32 321, ; 603
	i32 72, ; 604
	i32 322, ; 605
	i32 252, ; 606
	i32 330, ; 607
	i32 270, ; 608
	i32 377, ; 609
	i32 136, ; 610
	i32 124, ; 611
	i32 369, ; 612
	i32 71, ; 613
	i32 300, ; 614
	i32 111, ; 615
	i32 208, ; 616
	i32 262, ; 617
	i32 177, ; 618
	i32 152, ; 619
	i32 314, ; 620
	i32 313, ; 621
	i32 330, ; 622
	i32 203, ; 623
	i32 290, ; 624
	i32 118, ; 625
	i32 384, ; 626
	i32 238, ; 627
	i32 345, ; 628
	i32 173, ; 629
	i32 298, ; 630
	i32 127, ; 631
	i32 133, ; 632
	i32 178, ; 633
	i32 77, ; 634
	i32 46, ; 635
	i32 241, ; 636
	i32 73, ; 637
	i32 63, ; 638
	i32 98, ; 639
	i32 84, ; 640
	i32 315, ; 641
	i32 384, ; 642
	i32 43, ; 643
	i32 61, ; 644
	i32 184, ; 645
	i32 268, ; 646
	i32 205, ; 647
	i32 320, ; 648
	i32 376, ; 649
	i32 176, ; 650
	i32 37, ; 651
	i32 40, ; 652
	i32 231, ; 653
	i32 296, ; 654
	i32 160, ; 655
	i32 368, ; 656
	i32 98, ; 657
	i32 389, ; 658
	i32 236, ; 659
	i32 178, ; 660
	i32 0, ; 661
	i32 352, ; 662
	i32 135, ; 663
	i32 20, ; 664
	i32 65, ; 665
	i32 302, ; 666
	i32 125, ; 667
	i32 75, ; 668
	i32 260, ; 669
	i32 164, ; 670
	i32 156, ; 671
	i32 5, ; 672
	i32 49, ; 673
	i32 274, ; 674
	i32 303, ; 675
	i32 144, ; 676
	i32 139, ; 677
	i32 100, ; 678
	i32 388, ; 679
	i32 189, ; 680
	i32 123, ; 681
	i32 120, ; 682
	i32 142, ; 683
	i32 39, ; 684
	i32 68, ; 685
	i32 41, ; 686
	i32 322, ; 687
	i32 164, ; 688
	i32 372, ; 689
	i32 73, ; 690
	i32 316, ; 691
	i32 165, ; 692
	i32 180, ; 693
	i32 371, ; 694
	i32 363, ; 695
	i32 127, ; 696
	i32 246, ; 697
	i32 295, ; 698
	i32 68, ; 699
	i32 169, ; 700
	i32 259, ; 701
	i32 233, ; 702
	i32 194, ; 703
	i32 266, ; 704
	i32 151, ; 705
	i32 45, ; 706
	i32 108, ; 707
	i32 48, ; 708
	i32 96, ; 709
	i32 31, ; 710
	i32 315, ; 711
	i32 23, ; 712
	i32 166, ; 713
	i32 22, ; 714
	i32 364, ; 715
	i32 138, ; 716
	i32 365, ; 717
	i32 78, ; 718
	i32 323, ; 719
	i32 355, ; 720
	i32 54, ; 721
	i32 259, ; 722
	i32 366, ; 723
	i32 264, ; 724
	i32 10, ; 725
	i32 222, ; 726
	i32 263, ; 727
	i32 250, ; 728
	i32 16, ; 729
	i32 362, ; 730
	i32 349, ; 731
	i32 139, ; 732
	i32 187, ; 733
	i32 344, ; 734
	i32 332, ; 735
	i32 13, ; 736
	i32 15, ; 737
	i32 122, ; 738
	i32 318, ; 739
	i32 87, ; 740
	i32 149, ; 741
	i32 391, ; 742
	i32 22, ; 743
	i32 308, ; 744
	i32 34, ; 745
	i32 79, ; 746
	i32 308, ; 747
	i32 370, ; 748
	i32 288, ; 749
	i32 147, ; 750
	i32 80, ; 751
	i32 306, ; 752
	i32 173, ; 753
	i32 205, ; 754
	i32 215, ; 755
	i32 188, ; 756
	i32 356, ; 757
	i32 318, ; 758
	i32 42, ; 759
	i32 382, ; 760
	i32 26, ; 761
	i32 261, ; 762
	i32 258, ; 763
	i32 107, ; 764
	i32 386, ; 765
	i32 110, ; 766
	i32 186, ; 767
	i32 309, ; 768
	i32 7, ; 769
	i32 291, ; 770
	i32 44, ; 771
	i32 302, ; 772
	i32 385, ; 773
	i32 188, ; 774
	i32 161, ; 775
	i32 148, ; 776
	i32 340, ; 777
	i32 207, ; 778
	i32 227, ; 779
	i32 263, ; 780
	i32 38, ; 781
	i32 15, ; 782
	i32 146, ; 783
	i32 206, ; 784
	i32 8, ; 785
	i32 365, ; 786
	i32 244, ; 787
	i32 265, ; 788
	i32 130, ; 789
	i32 312, ; 790
	i32 311, ; 791
	i32 307, ; 792
	i32 281, ; 793
	i32 396, ; 794
	i32 94 ; 795
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" }

; Metadata
!llvm.module.flags = !{!0, !1, !7, !8, !9, !10}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ af27162bee43b7fecdca59b4f67aa8c175cbc875"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"branch-target-enforcement", i32 0}
!8 = !{i32 1, !"sign-return-address", i32 0}
!9 = !{i32 1, !"sign-return-address-all", i32 0}
!10 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
