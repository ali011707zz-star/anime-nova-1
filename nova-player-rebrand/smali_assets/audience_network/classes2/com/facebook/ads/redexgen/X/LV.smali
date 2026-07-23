.class public final Lcom/facebook/ads/redexgen/X/LV;
.super Lcom/facebook/ads/redexgen/X/ay;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/b0;,
        Lcom/facebook/ads/redexgen/X/b1;,
        Lcom/facebook/ads/redexgen/X/Lh;,
        Lcom/facebook/ads/redexgen/X/b2;,
        Lcom/facebook/ads/redexgen/X/b3;,
        Lcom/facebook/ads/redexgen/X/Lp;
    }
.end annotation


# static fields
.field public static A0F:[B

.field public static A0G:[Ljava/lang/String;

.field public static final A0H:Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:Lcom/facebook/ads/redexgen/X/Y2;

.field public A02:Lcom/facebook/ads/redexgen/X/fo;

.field public A03:Lcom/facebook/ads/redexgen/X/fp;

.field public A04:Z

.field public A05:Z

.field public A06:Z

.field public final A07:Landroid/graphics/Path;

.field public final A08:Landroid/graphics/RectF;

.field public final A09:Lcom/facebook/ads/redexgen/X/gi;

.field public final A0A:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/b1;",
            ">;"
        }
    .end annotation
.end field

.field public final A0B:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A0D:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final A0E:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 990
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "X5ywJXgSTO8PHmyyLHkjy"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "LJCQW"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "068uN"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "say"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "rTIjgGKqeW39zjdqZS0Aqu4tLxC"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Qrp"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "m8T4zYbfVU3hLt0iEDnj"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "pXMACVxBUOAUm1D"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/LV;->A0G:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/LV;->A04()V

    const-class v0, Lcom/facebook/ads/redexgen/X/LV;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/LV;->A0H:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/ref/WeakReference;ILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/gi;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/b1;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 50327
    .local p1, "adWebViewListener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/facebook/ads/internal/view/common/AdWebView$AdWebViewListener;>;"
    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3, v4}, Lcom/facebook/ads/redexgen/X/LV;-><init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/ref/WeakReference;IZ)V

    .line 50328
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Up;->A1z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50329
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    .line 50330
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A0B()Lcom/facebook/ads/redexgen/X/VM;

    move-result-object v3

    .line 50331
    if-nez p4, :cond_0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LV;->A02(III)Ljava/lang/String;

    move-result-object p4

    :cond_0
    const/4 v0, 0x1

    invoke-interface {v3, p0, p4, v4, v0}, Lcom/facebook/ads/redexgen/X/VM;->AKo(Landroid/view/View;Ljava/lang/String;ZZ)V

    .line 50332
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A06:Z

    .line 50333
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/ref/WeakReference;IZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/gi;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/b1;",
            ">;IZ)V"
        }
    .end annotation

    .line 50334
    .local p1, "adWebViewListener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/facebook/ads/internal/view/common/AdWebView$AdWebViewListener;>;"
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ay;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 50335
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A0B:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50336
    const/4 v4, 0x1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50337
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A07:Landroid/graphics/Path;

    .line 50338
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A08:Landroid/graphics/RectF;

    .line 50339
    const/16 v1, 0x1388

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A0D:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 50340
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A0E:Ljava/util/concurrent/atomic/AtomicReference;

    .line 50341
    new-instance v0, Lcom/facebook/ads/redexgen/X/Y2;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Y2;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A01:Lcom/facebook/ads/redexgen/X/Y2;

    .line 50342
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/LV;->A05:Z

    .line 50343
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/LV;->A06:Z

    .line 50344
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/LV;->A09:Lcom/facebook/ads/redexgen/X/gi;

    .line 50345
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/LV;->A04:Z

    .line 50346
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/LV;->A0A:Ljava/lang/ref/WeakReference;

    .line 50347
    new-instance v0, Lcom/facebook/ads/redexgen/X/Lq;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Lq;-><init>(Lcom/facebook/ads/redexgen/X/LV;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A02:Lcom/facebook/ads/redexgen/X/fo;

    .line 50348
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A02:Lcom/facebook/ads/redexgen/X/fo;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LV;->A09:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Lcom/facebook/ads/redexgen/X/fp;

    invoke-direct {v0, p0, p3, v2, v1}, Lcom/facebook/ads/redexgen/X/fp;-><init>(Landroid/view/View;ILjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A03:Lcom/facebook/ads/redexgen/X/fp;

    .line 50349
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/LV;->A0G()Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/LV;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 50350
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/LV;->A0H()Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/LV;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 50351
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/LV;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 50352
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/LV;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 50353
    new-instance v3, Lcom/facebook/ads/redexgen/X/b0;

    .line 50354
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/b1;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/LV;->A03:Lcom/facebook/ads/redexgen/X/fp;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/LV;->A0B:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/LV;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/LV;->A09:Lcom/facebook/ads/redexgen/X/gi;

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/b0;-><init>(Lcom/facebook/ads/redexgen/X/LV;Lcom/facebook/ads/redexgen/X/b1;Lcom/facebook/ads/redexgen/X/fp;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/ads/redexgen/X/gi;)V

    .line 50355
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LV;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/LV;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50356
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/LV;)Lcom/facebook/ads/redexgen/X/Y2;
    .locals 0

    .line 50357
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/LV;->A01:Lcom/facebook/ads/redexgen/X/Y2;

    return-object p0
.end method

.method public static synthetic A01()Ljava/lang/String;
    .locals 1

    .line 50358
    sget-object v0, Lcom/facebook/ads/redexgen/X/LV;->A0H:Ljava/lang/String;

    return-object v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/LV;->A0F:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x34

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/LV;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 50359
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/LV;->A0A:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/LV;->A0F:[B

    return-void

    :array_0
    .array-data 1
        0x5bt
        0x7et
        0x59t
        0x75t
        0x74t
        0x6et
        0x68t
        0x75t
        0x76t
    .end array-data
.end method

.method private final A05()Z
    .locals 1

    .line 50360
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A0B:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/LV;)Z
    .locals 0

    .line 50361
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/LV;->A05:Z

    return p0
.end method


# virtual methods
.method public final A0G()Landroid/webkit/WebChromeClient;
    .locals 1

    .line 50362
    new-instance v0, Lcom/facebook/ads/redexgen/X/b2;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/b2;-><init>()V

    return-object v0
.end method

.method public final A0H()Landroid/webkit/WebViewClient;
    .locals 11

    .line 50363
    new-instance v1, Lcom/facebook/ads/redexgen/X/b3;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/LV;->A09:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/LV;->A0A:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A03:Lcom/facebook/ads/redexgen/X/fp;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A01:Lcom/facebook/ads/redexgen/X/Y2;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/LV;->A0D:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/LV;->A0E:Ljava/util/concurrent/atomic/AtomicReference;

    iget-boolean v10, p0, Lcom/facebook/ads/redexgen/X/LV;->A04:Z

    invoke-direct/range {v1 .. v10}, Lcom/facebook/ads/redexgen/X/b3;-><init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;Z)V

    return-object v1
.end method

.method public final A0K()V
    .locals 3

    .line 50364
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A09:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AKq()V

    .line 50365
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LV;->A0B:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 50366
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LV;->A03:Lcom/facebook/ads/redexgen/X/fp;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Lh;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Lh;-><init>(Lcom/facebook/ads/redexgen/X/fp;)V

    .line 50367
    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50368
    return-void
.end method

.method public final A0L(II)V
    .locals 1

    .line 50369
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A03:Lcom/facebook/ads/redexgen/X/fp;

    if-eqz v0, :cond_0

    .line 50370
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A03:Lcom/facebook/ads/redexgen/X/fp;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/fp;->A0W(I)V

    .line 50371
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A03:Lcom/facebook/ads/redexgen/X/fp;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/fp;->A0X(I)V

    .line 50372
    :cond_0
    return-void
.end method

.method public final destroy()V
    .locals 2

    .line 50373
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A06:Z

    if-eqz v0, :cond_0

    .line 50374
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A09:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A0B()Lcom/facebook/ads/redexgen/X/VM;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/VM;->AKU(Landroid/view/View;)V

    .line 50375
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A03:Lcom/facebook/ads/redexgen/X/fp;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 50376
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A03:Lcom/facebook/ads/redexgen/X/fp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fp;->A0V()V

    .line 50377
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/LV;->A03:Lcom/facebook/ads/redexgen/X/fp;

    .line 50378
    :cond_1
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 50379
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/LV;->A02:Lcom/facebook/ads/redexgen/X/fo;

    .line 50380
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/LV;->A01:Lcom/facebook/ads/redexgen/X/Y2;

    .line 50381
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/b4;->A03(Landroid/webkit/WebView;)V

    .line 50382
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/ay;->destroy()V

    .line 50383
    return-void
.end method

.method public getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/Y2;
    .locals 1

    .line 50384
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A01:Lcom/facebook/ads/redexgen/X/Y2;

    return-object v0
.end method

.method public getViewabilityChecker()Lcom/facebook/ads/redexgen/X/fp;
    .locals 1

    .line 50385
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A03:Lcom/facebook/ads/redexgen/X/fp;

    return-object v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 50386
    iget v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A00:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    .line 50387
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/LV;->A08:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/LV;->getWidth()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/LV;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/LV;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 50388
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/LV;->A0G:[Ljava/lang/String;

    const-string v1, "xZYpx"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "aqsn9"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A07:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 50389
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/LV;->A07:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/LV;->A08:Landroid/graphics/RectF;

    iget v2, p0, Lcom/facebook/ads/redexgen/X/LV;->A00:F

    iget v1, p0, Lcom/facebook/ads/redexgen/X/LV;->A00:F

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 50390
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A07:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 50391
    :cond_1
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/ay;->onDraw(Landroid/graphics/Canvas;)V

    .line 50392
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 50393
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LV;->A01:Lcom/facebook/ads/redexgen/X/Y2;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A09:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v1, v0, p1, p0, p0}, Lcom/facebook/ads/redexgen/X/Y2;->A06(Lcom/facebook/ads/redexgen/X/gi;Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    .line 50394
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/ay;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 4

    .line 50395
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/ay;->onWindowVisibilityChanged(I)V

    .line 50396
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A0A:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50397
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A0A:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 50398
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A03:Lcom/facebook/ads/redexgen/X/fp;

    if-nez v0, :cond_1

    .line 50399
    return-void

    .line 50400
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/LV;->A09:Lcom/facebook/ads/redexgen/X/gi;

    sget-object v2, Lcom/facebook/ads/redexgen/X/LV;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/LV;->A0G:[Ljava/lang/String;

    const-string v1, "5ON080OOKwQwIFP5OG7h"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "JBDgk0gsadULglMDLs8S8"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Lt;->AL4(I)V

    .line 50401
    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/LV;->A05()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 50402
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A03:Lcom/facebook/ads/redexgen/X/fp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fp;->A0U()V

    .line 50403
    :cond_2
    :goto_0
    return-void

    .line 50404
    :cond_3
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 50405
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A03:Lcom/facebook/ads/redexgen/X/fp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fp;->A0V()V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public setBlockLocalFileAccessOutsideCache(Z)V
    .locals 0

    .line 50406
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/LV;->A04:Z

    .line 50407
    return-void
.end method

.method public setCheckAssetsByJavascriptBridge(Z)V
    .locals 1

    .line 50408
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 50409
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 0

    .line 50410
    iput p1, p0, Lcom/facebook/ads/redexgen/X/LV;->A00:F

    .line 50411
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/LV;->invalidate()V

    .line 50412
    return-void
.end method

.method public setLogMultipleImpressions(Z)V
    .locals 0

    .line 50413
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/LV;->A05:Z

    .line 50414
    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 1

    .line 50415
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A0E:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 50416
    return-void
.end method

.method public setWebViewTimeoutInMillis(I)V
    .locals 1

    .line 50417
    if-ltz p1, :cond_0

    .line 50418
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A0D:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 50419
    :cond_0
    return-void
.end method
