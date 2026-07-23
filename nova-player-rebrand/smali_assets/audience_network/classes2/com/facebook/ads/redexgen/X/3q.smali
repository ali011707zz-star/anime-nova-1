.class public final Lcom/facebook/ads/redexgen/X/3q;
.super Lcom/facebook/ads/redexgen/X/ED;
.source ""


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/AudioManager$OnAudioFocusChangeListener;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Lcom/facebook/ads/redexgen/X/EA;

.field public final A02:Lcom/facebook/ads/redexgen/X/E4;

.field public final A03:Lcom/facebook/ads/redexgen/X/E2;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 160
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "QMyl0EdrMkBz74Ff"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "RsTLWDF6GNKozTWYWcUQtNpRSKZ3a8yy"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "3BM6qDUn0450lnygNbifIZpDeGnVa2ha"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "F"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "qC4SUzvBtsB95zH"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "T9xPYhzLnjJILIo2UZ88O5HWOSlCgw65"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "9Z5hXOcvGEJoZZ2dBR43Uw9AYXT3hwwE"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "j5Icya"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/3q;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/3q;->A05()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 1

    .line 10937
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ED;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 10938
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3q;->A00:Ljava/lang/ref/WeakReference;

    .line 10939
    new-instance v0, Lcom/facebook/ads/redexgen/X/3u;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/3u;-><init>(Lcom/facebook/ads/redexgen/X/3q;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3q;->A01:Lcom/facebook/ads/redexgen/X/EA;

    .line 10940
    new-instance v0, Lcom/facebook/ads/redexgen/X/3s;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/3s;-><init>(Lcom/facebook/ads/redexgen/X/3q;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3q;->A02:Lcom/facebook/ads/redexgen/X/E4;

    .line 10941
    new-instance v0, Lcom/facebook/ads/redexgen/X/3r;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/3r;-><init>(Lcom/facebook/ads/redexgen/X/3q;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3q;->A03:Lcom/facebook/ads/redexgen/X/E2;

    .line 10942
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/3q;)Lcom/facebook/ads/redexgen/X/Ek;
    .locals 0

    .line 10943
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ED;->getVideoView()Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/3q;)Lcom/facebook/ads/redexgen/X/Ek;
    .locals 0

    .line 10944
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ED;->getVideoView()Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object p0

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/3q;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x2a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/3q;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 10945
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/3q;->A00:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/3q;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 10946
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3q;->A00:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method public static A05()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/3q;->A04:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x6ct
        -0x58t
        -0x69t
        -0x64t
        -0x5et
    .end array-data
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 10947
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/ED;->A07()V

    .line 10948
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ED;->getVideoView()Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10949
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ED;->getVideoView()Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v0

    .line 10950
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getEventBus()Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v3

    const/4 v0, 0x3

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/UN;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3q;->A03:Lcom/facebook/ads/redexgen/X/E2;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3q;->A01:Lcom/facebook/ads/redexgen/X/EA;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3q;->A02:Lcom/facebook/ads/redexgen/X/E4;

    aput-object v0, v2, v1

    .line 10951
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/UM;->A03([Lcom/facebook/ads/redexgen/X/UN;)V

    .line 10952
    :cond_0
    return-void
.end method

.method public final A08()V
    .locals 6

    .line 10953
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ED;->getVideoView()Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10954
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ED;->getVideoView()Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v0

    .line 10955
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getEventBus()Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v4

    const/4 v0, 0x3

    new-array v3, v0, [Lcom/facebook/ads/redexgen/X/UN;

    const/4 v5, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/3q;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/3q;->A05:[Ljava/lang/String;

    const-string v1, "N8PlN6ko7rCmWrjSgXmwzpcc7zXrNMwO"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "3Ei0HdJvkUvOcHctndwpn9MtMWHZ1TMz"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3q;->A02:Lcom/facebook/ads/redexgen/X/E4;

    aput-object v0, v3, v5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3q;->A01:Lcom/facebook/ads/redexgen/X/EA;

    aput-object v0, v3, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3q;->A03:Lcom/facebook/ads/redexgen/X/E2;

    aput-object v0, v3, v1

    .line 10956
    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/UM;->A04([Lcom/facebook/ads/redexgen/X/UN;)V

    .line 10957
    :cond_0
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/ED;->A08()V

    .line 10958
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final onDetachedFromWindow()V
    .locals 4

    .line 10959
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3q;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3q;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 10960
    .local v0, "audioManager":Landroid/media/AudioManager;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3q;->A00:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 10961
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/ED;->onDetachedFromWindow()V

    .line 10962
    return-void

    .line 10963
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3q;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager$OnAudioFocusChangeListener;

    goto :goto_0
.end method
