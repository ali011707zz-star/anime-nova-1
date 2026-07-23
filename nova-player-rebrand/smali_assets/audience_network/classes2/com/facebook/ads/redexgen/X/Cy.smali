.class public final Lcom/facebook/ads/redexgen/X/Cy;
.super Landroid/view/TextureView;
.source ""

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/facebook/ads/redexgen/X/fk;


# static fields
.field public static A0O:[B

.field public static A0P:[Ljava/lang/String;

.field public static final A0Q:Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:Landroid/media/MediaPlayer;

.field public A07:Landroid/net/Uri;

.field public A08:Landroid/view/Surface;

.field public A09:Landroid/view/View;

.field public A0A:Landroid/widget/MediaController;

.field public A0B:Lcom/facebook/ads/redexgen/X/et;

.field public A0C:Lcom/facebook/ads/redexgen/X/fm;

.field public A0D:Lcom/facebook/ads/redexgen/X/fm;

.field public A0E:Lcom/facebook/ads/redexgen/X/fn;

.field public A0F:Z

.field public A0G:Z

.field public A0H:Z

.field public A0I:Z

.field public A0J:Z

.field public A0K:Z

.field public final A0L:J

.field public final A0M:Landroid/widget/MediaController$MediaPlayerControl;

.field public final A0N:Lcom/facebook/ads/redexgen/X/gi;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 689
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "8kg0gsxxraVcY9760AfDDdqqLp5YK9AT"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "N8j2Ddyx"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "HVNw4PtkXrEg8LlUN7XWbo"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "maxPy5SeUtgOYTWaW"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "FkAKyJNQQf2eCz2ilXM7tuAli1jbjSs3"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "vA9Mb9Xk6BXUb"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "TQHC"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "vy65DpAohCvDmaIHVnToJ2EB52e80kqi"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Cy;->A0P:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Cy;->A04()V

    const-class v0, Lcom/facebook/ads/redexgen/X/Cy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Cy;->A0Q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 2

    .line 32728
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 32729
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A04:Lcom/facebook/ads/redexgen/X/fm;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0C:Lcom/facebook/ads/redexgen/X/fm;

    .line 32730
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A04:Lcom/facebook/ads/redexgen/X/fm;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0D:Lcom/facebook/ads/redexgen/X/fm;

    .line 32731
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0J:Z

    .line 32732
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A03:I

    .line 32733
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A05:I

    .line 32734
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A04:I

    .line 32735
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A00:F

    .line 32736
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0H:Z

    .line 32737
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A01:I

    .line 32738
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0F:Z

    .line 32739
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0K:Z

    .line 32740
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A02:I

    .line 32741
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0G:Z

    .line 32742
    sget-object v0, Lcom/facebook/ads/redexgen/X/et;->A03:Lcom/facebook/ads/redexgen/X/et;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0B:Lcom/facebook/ads/redexgen/X/et;

    .line 32743
    new-instance v0, Lcom/facebook/ads/redexgen/X/fh;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/fh;-><init>(Lcom/facebook/ads/redexgen/X/Cy;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0M:Landroid/widget/MediaController$MediaPlayerControl;

    .line 32744
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0I:Z

    .line 32745
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    .line 32746
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/util/AttributeSet;)V
    .locals 2

    .line 32747
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32748
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A04:Lcom/facebook/ads/redexgen/X/fm;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0C:Lcom/facebook/ads/redexgen/X/fm;

    .line 32749
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A04:Lcom/facebook/ads/redexgen/X/fm;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0D:Lcom/facebook/ads/redexgen/X/fm;

    .line 32750
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0J:Z

    .line 32751
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A03:I

    .line 32752
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A05:I

    .line 32753
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A04:I

    .line 32754
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A00:F

    .line 32755
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0H:Z

    .line 32756
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A01:I

    .line 32757
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0F:Z

    .line 32758
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0K:Z

    .line 32759
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A02:I

    .line 32760
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0G:Z

    .line 32761
    sget-object v0, Lcom/facebook/ads/redexgen/X/et;->A03:Lcom/facebook/ads/redexgen/X/et;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0B:Lcom/facebook/ads/redexgen/X/et;

    .line 32762
    new-instance v0, Lcom/facebook/ads/redexgen/X/fh;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/fh;-><init>(Lcom/facebook/ads/redexgen/X/Cy;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0M:Landroid/widget/MediaController$MediaPlayerControl;

    .line 32763
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0I:Z

    .line 32764
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    .line 32765
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 32766
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32767
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A04:Lcom/facebook/ads/redexgen/X/fm;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0C:Lcom/facebook/ads/redexgen/X/fm;

    .line 32768
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A04:Lcom/facebook/ads/redexgen/X/fm;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0D:Lcom/facebook/ads/redexgen/X/fm;

    .line 32769
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0J:Z

    .line 32770
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A03:I

    .line 32771
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A05:I

    .line 32772
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A04:I

    .line 32773
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A00:F

    .line 32774
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0H:Z

    .line 32775
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A01:I

    .line 32776
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0F:Z

    .line 32777
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0K:Z

    .line 32778
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A02:I

    .line 32779
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0G:Z

    .line 32780
    sget-object v0, Lcom/facebook/ads/redexgen/X/et;->A03:Lcom/facebook/ads/redexgen/X/et;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0B:Lcom/facebook/ads/redexgen/X/et;

    .line 32781
    new-instance v0, Lcom/facebook/ads/redexgen/X/fh;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/fh;-><init>(Lcom/facebook/ads/redexgen/X/Cy;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0M:Landroid/widget/MediaController$MediaPlayerControl;

    .line 32782
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0I:Z

    .line 32783
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    .line 32784
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Cy;)Landroid/media/MediaPlayer;
    .locals 0

    .line 32785
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A06:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Cy;)Landroid/widget/MediaController;
    .locals 0

    .line 32786
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0A:Landroid/widget/MediaController;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Cy;)Lcom/facebook/ads/redexgen/X/fn;
    .locals 0

    .line 32787
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0E:Lcom/facebook/ads/redexgen/X/fn;

    return-object p0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cy;->A0O:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x191

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Cy;->A0O:[B

    return-void

    :array_0
    .array-data 1
        0x73t
        0x7dt
        0x71t
        0x73t
        -0x4at
        -0x37t
        -0x3bt
        -0x3dt
        -0x4et
        0x73t
        0x71t
        -0x75t
        0x71t
        0x73t
        -0x36t
        0x25t
        -0x73t
        -0x55t
        -0x48t
        -0x48t
        -0x47t
        -0x42t
        0x6at
        -0x46t
        -0x44t
        -0x51t
        -0x46t
        -0x55t
        -0x44t
        -0x51t
        0x6at
        -0x49t
        -0x51t
        -0x52t
        -0x4dt
        -0x55t
        0x6at
        -0x46t
        -0x4at
        -0x55t
        -0x3dt
        -0x51t
        -0x44t
        0x6at
        -0x3ft
        -0x4dt
        -0x42t
        -0x4et
        0x6at
        -0x63t
        -0x41t
        -0x44t
        -0x50t
        -0x55t
        -0x53t
        -0x51t
        -0x62t
        -0x51t
        -0x3et
        -0x42t
        -0x41t
        -0x44t
        -0x51t
        -0x7ct
        0x6at
        -0x46t
        -0x1at
        -0x14t
        -0x1dt
        -0x25t
        -0x1bt
        -0x62t
        -0x15t
        -0x69t
        -0x17t
        -0x24t
        -0x15t
        -0x17t
        -0x20t
        -0x24t
        -0x13t
        -0x24t
        -0x69t
        -0x13t
        -0x20t
        -0x25t
        -0x24t
        -0x1at
        -0x69t
        -0x20t
        -0x1bt
        -0x23t
        -0x1at
        -0x17t
        -0x1ct
        -0x28t
        -0x15t
        -0x20t
        -0x1at
        -0x1bt
        -0x2ft
        -0x14t
        -0xct
        -0x9t
        -0x10t
        -0x11t
        -0x55t
        -0x1t
        -0x6t
        -0x55t
        -0x6t
        -0x5t
        -0x10t
        -0x7t
        -0x55t
        -0x14t
        -0x2t
        -0x2t
        -0x10t
        -0x1t
        -0x2t
        -0x68t
        -0x40t
        -0x40t
        -0x48t
        -0x43t
        -0x4at
        0x71t
        -0x4et
        -0x43t
        -0x38t
        -0x4et
        -0x36t
        -0x3ct
        0x71t
        -0x3bt
        -0x47t
        -0x3dt
        -0x40t
        -0x38t
        0x71t
        -0x4et
        -0x41t
        0x71t
        -0x4at
        -0x37t
        -0x4ct
        -0x4at
        -0x3ft
        -0x3bt
        -0x46t
        -0x40t
        -0x41t
        0x71t
        -0x38t
        -0x46t
        -0x3bt
        -0x47t
        0x71t
        -0x3ct
        -0x4at
        -0x3bt
        -0x6dt
        -0x4et
        -0x4ct
        -0x44t
        -0x48t
        -0x3dt
        -0x40t
        -0x3at
        -0x41t
        -0x4bt
        -0x6bt
        -0x3dt
        -0x4et
        -0x38t
        -0x4et
        -0x4dt
        -0x43t
        -0x4at
        0x71t
        -0x40t
        -0x41t
        0x71t
        -0x61t
        -0x40t
        -0x3at
        -0x48t
        -0x4et
        -0x3bt
        0x71t
        -0x4et
        -0x4dt
        -0x40t
        -0x39t
        -0x4at
        0x7ft
        0x71t
        -0x3ct
        -0x40t
        0x71t
        -0x38t
        -0x4at
        0x71t
        -0x3ct
        -0x46t
        -0x43t
        -0x4at
        -0x41t
        -0x3bt
        -0x43t
        -0x36t
        0x71t
        -0x46t
        -0x48t
        -0x41t
        -0x40t
        -0x3dt
        -0x4at
        0x71t
        -0x46t
        -0x3bt
        0x7ft
        -0x17t
        0x11t
        0x11t
        0x9t
        0xet
        0x7t
        -0x3et
        0x3t
        0xet
        0x19t
        0x3t
        0x1bt
        0x15t
        -0x3et
        0x16t
        0xat
        0x14t
        0x11t
        0x19t
        -0x3et
        0x3t
        0x10t
        -0x3et
        0x7t
        0x1at
        0x5t
        0x7t
        0x12t
        0x16t
        0xbt
        0x11t
        0x10t
        -0x3et
        0x19t
        0xbt
        0x16t
        0xat
        -0x3et
        0x15t
        0x7t
        0x16t
        -0x18t
        0x11t
        0x14t
        0x7t
        0x9t
        0x14t
        0x11t
        0x17t
        0x10t
        0x6t
        -0x3et
        0x11t
        0x10t
        -0x3et
        -0x10t
        0x11t
        0x17t
        0x9t
        0x3t
        0x16t
        -0x3et
        0x3t
        0x4t
        0x11t
        0x18t
        0x7t
        -0x30t
        -0x3et
        0x15t
        0x11t
        -0x3et
        0x19t
        0x7t
        -0x3et
        0x15t
        0xbt
        0xet
        0x7t
        0x10t
        0x16t
        0xet
        0x1bt
        -0x3et
        0xbt
        0x9t
        0x10t
        0x11t
        0x14t
        0x7t
        -0x3et
        0xbt
        0x16t
        -0x30t
        -0x2ft
        -0x16t
        -0x23t
        -0x22t
        -0x18t
        -0x1ft
        -0x64t
        -0x10t
        -0x15t
        -0x64t
        -0x21t
        -0x18t
        -0x15t
        -0x11t
        -0x1ft
        -0xdt
        0x10t
        0x7t
        -0x42t
        0x11t
        0x6t
        0xdt
        0x13t
        0xat
        0x2t
        -0x42t
        0xct
        0xdt
        0x12t
        -0x42t
        0x0t
        0x3t
        -0x42t
        0x3t
        0xbt
        0xet
        0x12t
        0x17t
        -0x34t
        -0x4t
        0xft
        0xat
        0xbt
        0x15t
        -0x3at
        0x19t
        0x1at
        0x7t
        0x1at
        0xbt
        -0x3at
        0x9t
        0xet
        0x7t
        0x14t
        0xdt
        0xbt
        0xat
        -0x3at
        0x1at
        0x15t
        -0x3at
        -0x61t
        -0x4ft
        -0x4ft
        -0x5dt
        -0x4et
        0x1at
        0x16t
        0xbt
        0x23t
        0xft
        0x1ct
        0xct
        -0x4dt
        0x8t
        -0x7t
        -0xet
        0x5t
        -0x4dt
        -0x4ft
        -0x35t
        -0x4ft
        -0x4dt
    .end array-data
.end method

.method private final A05(Landroid/media/MediaPlayer;Landroid/net/Uri;)V
    .locals 13

    .line 32788
    const/16 v2, 0x13d

    const/16 v1, 0xf

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cy;->A03(III)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    .line 32789
    .local v1, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 32790
    .local v2, "uriPath":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32791
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Cy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 32792
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v9

    .line 32793
    .local v5, "start":J
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v11

    .line 32794
    .local v7, "end":J
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 32795
    .end local v2    # "uriPath":Ljava/lang/String;
    .end local v5    # "start":J
    .end local v7    # "end":J
    if-eqz v6, :cond_2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32796
    :try_start_1
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 32797
    :cond_0
    :try_start_2
    const/16 v2, 0x14c

    const/16 v1, 0x18

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cy;->A03(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v10
    .end local v11
    throw v1
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32798
    :catch_0
    move-exception v5

    goto :goto_0

    :catch_1
    move-exception v5

    .line 32799
    .local v2, "ex":Ljava/lang/Exception;
    :goto_0
    :try_start_3
    sget-object v4, Lcom/facebook/ads/redexgen/X/Cy;->A0Q:Ljava/lang/String;

    const/16 v2, 0x64

    const/16 v1, 0x15

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cy;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32800
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A03:Lcom/facebook/ads/redexgen/X/fm;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Cy;->setVideoState(Lcom/facebook/ads/redexgen/X/fm;)V

    .line 32801
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3i(I)V

    .line 32802
    .end local v2    # "ex":Ljava/lang/Exception;
    if-eqz v6, :cond_2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 32803
    :try_start_4
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 32804
    :catch_2
    move-exception v5

    .line 32805
    .local v2, "e":Ljava/io/IOException;
    sget-object v4, Lcom/facebook/ads/redexgen/X/Cy;->A0Q:Ljava/lang/String;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cy;->A0P:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cy;->A0P:[Ljava/lang/String;

    const-string v1, "IDdSaYeoVr3R4FZ1u"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-static {v4, v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32806
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    return-void

    .line 32807
    .end local v2
    .restart local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local v10
    .restart local v11
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_3

    .line 32808
    :try_start_5
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 32809
    :catch_3
    move-exception v1

    .line 32810
    .local v3, "e":Ljava/io/IOException;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Cy;->A0Q:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32811
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3
    :goto_2
    throw v2
.end method

.method private A06()Z
    .locals 2

    .line 32812
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0C:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A08:Lcom/facebook/ads/redexgen/X/fm;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0C:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A07:Lcom/facebook/ads/redexgen/X/fm;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A07()Z
    .locals 2

    .line 32813
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0C:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A07:Lcom/facebook/ads/redexgen/X/fm;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0C:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A0A:Lcom/facebook/ads/redexgen/X/fm;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0C:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A05:Lcom/facebook/ads/redexgen/X/fm;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0C:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A06:Lcom/facebook/ads/redexgen/X/fm;

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A08()Z
    .locals 2

    .line 32814
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0C:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A08:Lcom/facebook/ads/redexgen/X/fm;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0C:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A07:Lcom/facebook/ads/redexgen/X/fm;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A09()Z
    .locals 7

    .line 32815
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A06:Landroid/media/MediaPlayer;

    const/4 v6, 0x0

    if-nez v0, :cond_0

    .line 32816
    return v6

    .line 32817
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 32818
    const/4 v0, 0x1

    return v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32819
    :catch_0
    move-exception v1

    .line 32820
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    .line 32821
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/Td;->A2H:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 32822
    const/16 v2, 0x180

    const/4 v1, 0x6

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cy;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 32823
    return v6
.end method

.method private A0A(Landroid/view/Surface;)Z
    .locals 7

    .line 32824
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A06:Landroid/media/MediaPlayer;

    const/4 v6, 0x0

    if-nez v0, :cond_0

    .line 32825
    return v6

    .line 32826
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 32827
    const/4 v0, 0x1

    return v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32828
    :catch_0
    move-exception v1

    .line 32829
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    .line 32830
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/Td;->A2I:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 32831
    const/16 v2, 0x180

    const/4 v1, 0x6

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cy;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 32832
    return v6
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/Cy;)Z
    .locals 0

    .line 32833
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0G:Z

    return p0
.end method

.method private setVideoState(Lcom/facebook/ads/redexgen/X/fm;)V
    .locals 4

    .line 33079
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0C:Lcom/facebook/ads/redexgen/X/fm;

    if-eq p1, v0, :cond_1

    .line 33080
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A05()Lcom/facebook/ads/redexgen/X/TD;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TD;->AAO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33081
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x164

    const/16 v1, 0x17

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cy;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33082
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0C:Lcom/facebook/ads/redexgen/X/fm;

    .line 33083
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0E:Lcom/facebook/ads/redexgen/X/fn;

    if-eqz v0, :cond_1

    .line 33084
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0E:Lcom/facebook/ads/redexgen/X/fn;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/fn;->AGd(Lcom/facebook/ads/redexgen/X/fm;)V

    .line 33085
    :cond_1
    return-void
.end method


# virtual methods
.method public final synthetic A0C()V
    .locals 1

    .line 32834
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0E()Landroid/app/Activity;

    move-result-object v0

    .line 32835
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32836
    return-void

    .line 32837
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Cy;->A9d()V

    .line 32838
    return-void
.end method

.method public final A9d()V
    .locals 2

    .line 32839
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0F:Z

    if-nez v0, :cond_0

    .line 32840
    const/4 v1, 0x0

    const/4 v0, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Cy;->AGr(ZI)V

    .line 32841
    :cond_0
    return-void
.end method

.method public final A9q()Z
    .locals 7

    .line 32842
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A06:Landroid/media/MediaPlayer;

    const/4 v6, 0x0

    if-eqz v0, :cond_2

    .line 32843
    const/4 v5, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v4

    array-length v3, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v4, v2

    .line 32844
    .local v5, "trackInfo":Landroid/media/MediaPlayer$TrackInfo;
    invoke-virtual {v0}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    goto :goto_1

    .line 32845
    .end local v5    # "trackInfo":Landroid/media/MediaPlayer$TrackInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 32846
    :goto_1
    return v5

    .line 32847
    :cond_1
    return v6
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32848
    :catch_0
    move-exception v4

    .line 32849
    .local v1, "e":Ljava/lang/RuntimeException;
    sget-object v3, Lcom/facebook/ads/redexgen/X/Cy;->A0Q:Ljava/lang/String;

    const/16 v2, 0x41

    const/16 v1, 0x23

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cy;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32850
    return v5

    .line 32851
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_2
    return v6
.end method

.method public final A9r()Z
    .locals 1

    .line 32852
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0K:Z

    return v0
.end method

.method public final AAc()Z
    .locals 1

    .line 32853
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0J:Z

    return v0
.end method

.method public final AGr(ZI)V
    .locals 2

    .line 32854
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/Lt;->A3e(I)V

    .line 32855
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A05:Lcom/facebook/ads/redexgen/X/fm;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0D:Lcom/facebook/ads/redexgen/X/fm;

    .line 32856
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 32857
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Cy;->A06()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32858
    return-void

    .line 32859
    :cond_0
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0J:Z

    .line 32860
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 32861
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0C:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A06:Lcom/facebook/ads/redexgen/X/fm;

    if-eq v1, v0, :cond_2

    .line 32862
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A05:Lcom/facebook/ads/redexgen/X/fm;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Cy;->setVideoState(Lcom/facebook/ads/redexgen/X/fm;)V

    goto :goto_0

    .line 32863
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A04:Lcom/facebook/ads/redexgen/X/fm;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Cy;->setVideoState(Lcom/facebook/ads/redexgen/X/fm;)V

    .line 32864
    :cond_2
    :goto_0
    return-void
.end method

.method public final AK1(I)V
    .locals 1

    .line 32865
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Lt;->ACX(I)V

    .line 32866
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A09:Lcom/facebook/ads/redexgen/X/fm;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Cy;->setVideoState(Lcom/facebook/ads/redexgen/X/fm;)V

    .line 32867
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Cy;->AKF(I)V

    .line 32868
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A03:I

    .line 32869
    return-void
.end method

.method public final AK6(Lcom/facebook/ads/redexgen/X/et;I)V
    .locals 3

    .line 32870
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/Lt;->A3p(I)V

    .line 32871
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0J:Z

    .line 32872
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A0A:Lcom/facebook/ads/redexgen/X/fm;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0D:Lcom/facebook/ads/redexgen/X/fm;

    .line 32873
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0B:Lcom/facebook/ads/redexgen/X/et;

    .line 32874
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0C:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A0A:Lcom/facebook/ads/redexgen/X/fm;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0C:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A07:Lcom/facebook/ads/redexgen/X/fm;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0C:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A04:Lcom/facebook/ads/redexgen/X/fm;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0C:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A05:Lcom/facebook/ads/redexgen/X/fm;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0C:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A06:Lcom/facebook/ads/redexgen/X/fm;

    if-ne v1, v0, :cond_1

    .line 32875
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A06:Landroid/media/MediaPlayer;

    if-nez v0, :cond_3

    .line 32876
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A07:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Cy;->setup(Landroid/net/Uri;)V

    .line 32877
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Cy;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32878
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Cy;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v2}, Lcom/facebook/ads/redexgen/X/Cy;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 32879
    :cond_2
    return-void

    .line 32880
    :cond_3
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A03:I

    if-lez v0, :cond_4

    .line 32881
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A06:Landroid/media/MediaPlayer;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A03:I

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 32882
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 32883
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0C:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A07:Lcom/facebook/ads/redexgen/X/fm;

    if-ne v1, v0, :cond_5

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0K:Z

    if-eqz v0, :cond_1

    .line 32884
    :cond_5
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A0A:Lcom/facebook/ads/redexgen/X/fm;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Cy;->setVideoState(Lcom/facebook/ads/redexgen/X/fm;)V

    goto :goto_0
.end method

.method public final AKF(I)V
    .locals 2

    .line 32885
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Lt;->A3r(I)V

    .line 32886
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A04:Lcom/facebook/ads/redexgen/X/fm;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0D:Lcom/facebook/ads/redexgen/X/fm;

    .line 32887
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 32888
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 32889
    .local v0, "currentPosition":I
    if-lez v0, :cond_0

    .line 32890
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A03:I

    .line 32891
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 32892
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Cy;->A09()Z

    .line 32893
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 32894
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A06:Landroid/media/MediaPlayer;

    .line 32895
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0A:Landroid/widget/MediaController;

    if-eqz v0, :cond_1

    .line 32896
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0A:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 32897
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0A:Landroid/widget/MediaController;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 32898
    .end local v0    # "currentPosition":I
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A04:Lcom/facebook/ads/redexgen/X/fm;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Cy;->setVideoState(Lcom/facebook/ads/redexgen/X/fm;)V

    .line 32899
    return-void
.end method

.method public final destroy()V
    .locals 5

    .line 32900
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 32901
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/Cy;->A0A(Landroid/view/Surface;)Z

    .line 32902
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 32903
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 32904
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 32905
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Cy;->A06:Landroid/media/MediaPlayer;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cy;->A0P:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cy;->A0P:[Ljava/lang/String;

    const-string v1, "r7bVcQo0vwDc4SuX1"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 32906
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 32907
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 32908
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 32909
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Cy;->A09()Z

    .line 32910
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/Cy;->A06:Landroid/media/MediaPlayer;

    .line 32911
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A04:Lcom/facebook/ads/redexgen/X/fm;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Cy;->setVideoState(Lcom/facebook/ads/redexgen/X/fm;)V

    .line 32912
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public getCurrentPosition()I
    .locals 2

    .line 32913
    const/4 v1, 0x0

    .line 32914
    .local v0, "position":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Cy;->A07()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32915
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    .line 32916
    :cond_0
    return v1
.end method

.method public getDuration()I
    .locals 1

    .line 32917
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Cy;->A07()Z

    move-result v0

    if-nez v0, :cond_1

    .line 32918
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 32919
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public getInitialBufferTime()J
    .locals 2

    .line 32920
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0L:J

    return-wide v0
.end method

.method public getStartReason()Lcom/facebook/ads/redexgen/X/et;
    .locals 1

    .line 32921
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0B:Lcom/facebook/ads/redexgen/X/et;

    return-object v0
.end method

.method public getState()Lcom/facebook/ads/redexgen/X/fm;
    .locals 1

    .line 32922
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0C:Lcom/facebook/ads/redexgen/X/fm;

    return-object v0
.end method

.method public getTargetState()Lcom/facebook/ads/redexgen/X/fm;
    .locals 1

    .line 32923
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0D:Lcom/facebook/ads/redexgen/X/fm;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 32924
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A04:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 32925
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A05:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 32926
    return-object p0
.end method

.method public getVolume()F
    .locals 1

    .line 32927
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A00:F

    return v0
.end method

.method public final isHardwareAccelerated()Z
    .locals 1

    .line 32928
    invoke-super {p0}, Landroid/view/TextureView;->isHardwareAccelerated()Z

    move-result v0

    return v0
.end method

.method public final onAttachedToWindow()V
    .locals 2

    .line 32929
    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    .line 32930
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Cy;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32931
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A03:Lcom/facebook/ads/redexgen/X/fm;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Cy;->setVideoState(Lcom/facebook/ads/redexgen/X/fm;)V

    .line 32932
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    .line 32933
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    .line 32934
    const/4 v0, 0x5

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3i(I)V

    .line 32935
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Cy;->AKF(I)V

    .line 32936
    :cond_0
    return-void
.end method

.method public final onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    .line 32937
    return-void
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 32938
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 32939
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 32940
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A06:Lcom/facebook/ads/redexgen/X/fm;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Cy;->setVideoState(Lcom/facebook/ads/redexgen/X/fm;)V

    .line 32941
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Cy;->seekTo(I)V

    .line 32942
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A03:I

    .line 32943
    return-void
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 5

    .line 32944
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    .line 32945
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x186

    const/16 v1, 0xb

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cy;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cy;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0xe

    const/4 v1, 0x2

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cy;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32946
    invoke-interface {v4, v0}, Lcom/facebook/ads/redexgen/X/Lt;->ACW(Ljava/lang/String;)V

    .line 32947
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A01:I

    const/4 v2, 0x1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Cy;->getState()Lcom/facebook/ads/redexgen/X/fm;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A0A:Lcom/facebook/ads/redexgen/X/fm;

    if-ne v1, v0, :cond_0

    .line 32948
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A01:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A01:I

    .line 32949
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Cy;->AKF(I)V

    .line 32950
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0B:Lcom/facebook/ads/redexgen/X/et;

    const/16 v0, 0xa

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Cy;->AK6(Lcom/facebook/ads/redexgen/X/et;I)V

    .line 32951
    :goto_0
    return v2

    .line 32952
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A03:Lcom/facebook/ads/redexgen/X/fm;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Cy;->setVideoState(Lcom/facebook/ads/redexgen/X/fm;)V

    .line 32953
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    .line 32954
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    .line 32955
    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/Lt;->A3i(I)V

    .line 32956
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Cy;->AKF(I)V

    goto :goto_0
.end method

.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 3

    .line 32957
    sparse-switch p2, :sswitch_data_0

    .line 32958
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 32959
    :sswitch_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Cy;->A08()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32960
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A0A:Lcom/facebook/ads/redexgen/X/fm;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Cy;->setVideoState(Lcom/facebook/ads/redexgen/X/fm;)V

    goto :goto_0

    .line 32961
    :sswitch_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A02:Lcom/facebook/ads/redexgen/X/fm;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Cy;->setVideoState(Lcom/facebook/ads/redexgen/X/fm;)V

    .line 32962
    goto :goto_0

    .line 32963
    :sswitch_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0K:Z

    .line 32964
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0D:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A0A:Lcom/facebook/ads/redexgen/X/fm;

    if-ne v1, v0, :cond_1

    .line 32965
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A0A:Lcom/facebook/ads/redexgen/X/fm;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Cy;->setVideoState(Lcom/facebook/ads/redexgen/X/fm;)V

    .line 32966
    :cond_1
    return v2

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x2bd -> :sswitch_1
        0x2be -> :sswitch_0
    .end sparse-switch
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6

    .line 32967
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A07:Lcom/facebook/ads/redexgen/X/fm;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Cy;->setVideoState(Lcom/facebook/ads/redexgen/X/fm;)V

    .line 32968
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0H:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0G:Z

    if-nez v0, :cond_0

    .line 32969
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0E()Landroid/app/Activity;

    move-result-object v1

    .line 32970
    .local v0, "activityContext":Landroid/app/Activity;
    if-eqz v1, :cond_2

    .line 32971
    new-instance v0, Landroid/widget/MediaController;

    invoke-direct {v0, v1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0A:Landroid/widget/MediaController;

    .line 32972
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0A:Landroid/widget/MediaController;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A09:Landroid/view/View;

    if-nez v0, :cond_1

    move-object v0, p0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 32973
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0A:Landroid/widget/MediaController;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0M:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 32974
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0A:Landroid/widget/MediaController;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 32975
    .end local v0    # "activityContext":Landroid/app/Activity;
    :cond_0
    :goto_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A00:F

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Cy;->setRequestedVolume(F)V

    .line 32976
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A05:I

    .line 32977
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A04:I

    .line 32978
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A03:I

    if-lez v0, :cond_5

    .line 32979
    iget v5, p0, Lcom/facebook/ads/redexgen/X/Cy;->A03:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A06:Landroid/media/MediaPlayer;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/hX;->A00(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v4

    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cy;->A0P:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 32980
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A09:Landroid/view/View;

    goto :goto_0

    .line 32981
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0A:Landroid/widget/MediaController;

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cy;->A0P:[Ljava/lang/String;

    const-string v1, "vYKpudhGuKF00mC0lqJEZv1Z"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-lt v5, v4, :cond_4

    .line 32982
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Cy;->A03:I

    .line 32983
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A06:Landroid/media/MediaPlayer;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A03:I

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 32984
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Cy;->A03:I

    .line 32985
    :cond_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0D:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A0A:Lcom/facebook/ads/redexgen/X/fm;

    if-ne v1, v0, :cond_6

    .line 32986
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0B:Lcom/facebook/ads/redexgen/X/et;

    const/16 v0, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Cy;->AK6(Lcom/facebook/ads/redexgen/X/et;I)V

    .line 32987
    :cond_6
    return-void
.end method

.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 32988
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0E:Lcom/facebook/ads/redexgen/X/fn;

    if-nez v0, :cond_0

    .line 32989
    return-void

    .line 32990
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0E:Lcom/facebook/ads/redexgen/X/fn;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A03:I

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fn;->AFr(II)V

    .line 32991
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A03:I

    .line 32992
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 32993
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A08:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 32994
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A08:Landroid/view/Surface;

    .line 32995
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A08:Landroid/view/Surface;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Cy;->A0A(Landroid/view/Surface;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 32996
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A03:Lcom/facebook/ads/redexgen/X/fm;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Cy;->setVideoState(Lcom/facebook/ads/redexgen/X/fm;)V

    .line 32997
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    .line 32998
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    .line 32999
    const/4 v0, 0x4

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3i(I)V

    .line 33000
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Cy;->destroy()V

    .line 33001
    return-void

    .line 33002
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0C:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A05:Lcom/facebook/ads/redexgen/X/fm;

    if-ne v1, v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0J:Z

    if-nez v0, :cond_2

    .line 33003
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0B:Lcom/facebook/ads/redexgen/X/et;

    const/4 v0, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Cy;->AK6(Lcom/facebook/ads/redexgen/X/et;I)V

    .line 33004
    :cond_2
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 33005
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Cy;->A0A(Landroid/view/Surface;)Z

    .line 33006
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A08:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 33007
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A08:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 33008
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A08:Landroid/view/Surface;

    .line 33009
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0C:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A05:Lcom/facebook/ads/redexgen/X/fm;

    if-eq v1, v0, :cond_1

    .line 33010
    const/4 v1, 0x0

    const/4 v0, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Cy;->AGr(ZI)V

    .line 33011
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 33012
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 11

    .line 33013
    move-object v3, p0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Cy;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A20(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33014
    return-void

    .line 33015
    :cond_0
    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/Cy;->A06:Landroid/media/MediaPlayer;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cy;->A0P:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x32

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cy;->A0P:[Ljava/lang/String;

    const-string v1, "ZKmo0lxTtT2mJSQRRhI8B7lsvNxlt9ka"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Cy;->A07()Z

    move-result v0

    if-nez v0, :cond_3

    .line 33016
    .end local v1
    .end local v10
    .end local p1    # null:Landroid/graphics/SurfaceTexture;
    .end local p3
    :cond_2
    return-void

    .line 33017
    :cond_3
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/Cy;->A0I:Z

    if-nez v0, :cond_4

    .line 33018
    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/facebook/ads/redexgen/X/Cy;->A0I:Z

    .line 33019
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Cy;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AJ3()V

    .line 33020
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Cy;->getCurrentPosition()I

    move-result v0

    int-to-long v4, v0

    .line 33021
    .local v10, "encoding_pts":J
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Cy;->getCurrentPosition()I

    move-result v0

    int-to-long v6, v0

    .line 33022
    .local p1, "playback_pts":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 33023
    .local p3, "unix_pts":J
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Cy;->getVolume()F

    move-result v10

    .line 33024
    .local v1, "volume":F
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Cy;->A0E:Lcom/facebook/ads/redexgen/X/fn;

    if-eqz v0, :cond_5

    .line 33025
    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/Cy;->A0E:Lcom/facebook/ads/redexgen/X/fn;

    invoke-interface/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/fn;->ADy(JJJF)V

    .line 33026
    :cond_5
    return-void
.end method

.method public final onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1

    .line 33027
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A05:I

    .line 33028
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A04:I

    .line 33029
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A05:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A04:I

    if-eqz v0, :cond_0

    .line 33030
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Cy;->requestLayout()V

    .line 33031
    :cond_0
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 5

    .line 33032
    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowFocusChanged(Z)V

    .line 33033
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A06:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 33034
    return-void

    .line 33035
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0A:Landroid/widget/MediaController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0A:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33036
    return-void

    .line 33037
    :cond_1
    if-nez p1, :cond_2

    .line 33038
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0C:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A05:Lcom/facebook/ads/redexgen/X/fm;

    if-eq v1, v0, :cond_7

    .line 33039
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0H()Lcom/facebook/ads/redexgen/X/T6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T6;->A01()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    .line 33040
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A25(Landroid/content/Context;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cy;->A0P:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 33041
    :cond_2
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0C:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v3, Lcom/facebook/ads/redexgen/X/fm;->A05:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cy;->A0P:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_3

    if-ne v4, v3, :cond_7

    :goto_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0J:Z

    if-nez v0, :cond_7

    .line 33042
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0B:Lcom/facebook/ads/redexgen/X/et;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cy;->A0P:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cy;->A0P:[Ljava/lang/String;

    const-string v1, "r8oy"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_7

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cy;->A0P:[Ljava/lang/String;

    const-string v1, "grk6xKjGgtFswoEyrqXB"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/16 v0, 0x9

    invoke-virtual {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/Cy;->AK6(Lcom/facebook/ads/redexgen/X/et;I)V

    goto :goto_1

    .line 33043
    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cy;->A0P:[Ljava/lang/String;

    const-string v1, "q2iXdwHPhxMMYJm8CrOmbfqNZQSE"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_8

    :cond_6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt v1, v0, :cond_8

    .line 33044
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/facebook/ads/redexgen/X/fg;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/fg;-><init>(Lcom/facebook/ads/redexgen/X/Cy;)V

    .line 33045
    const-wide/16 v0, 0x3e8

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 33046
    :cond_7
    :goto_1
    return-void

    .line 33047
    :cond_8
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Cy;->A9d()V

    goto :goto_1
.end method

.method public final seekTo(I)V
    .locals 1

    .line 33048
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Cy;->A07()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33049
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Cy;->getDuration()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-lez p1, :cond_0

    .line 33050
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Cy;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A02:I

    .line 33051
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A03:I

    .line 33052
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 33053
    :cond_0
    :goto_0
    return-void

    .line 33054
    :cond_1
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A03:I

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 33055
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge v1, v0, :cond_1

    .line 33056
    invoke-super {p0, p1}, Landroid/view/TextureView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33057
    :cond_0
    :goto_0
    return-void

    .line 33058
    :cond_1
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33059
    sget-object v3, Lcom/facebook/ads/redexgen/X/Cy;->A0Q:Ljava/lang/String;

    const/16 v2, 0x79

    const/16 v1, 0x66

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cy;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBackgroundPlaybackEnabled(Z)V
    .locals 0

    .line 33060
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0F:Z

    .line 33061
    return-void
.end method

.method public setControlsAnchorView(Landroid/view/View;)V
    .locals 1

    .line 33062
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A09:Landroid/view/View;

    .line 33063
    new-instance v0, Lcom/facebook/ads/redexgen/X/fj;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/fj;-><init>(Lcom/facebook/ads/redexgen/X/Cy;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 33064
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 33065
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge v1, v0, :cond_1

    .line 33066
    invoke-super {p0, p1}, Landroid/view/TextureView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 33067
    :cond_0
    :goto_0
    return-void

    .line 33068
    :cond_1
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33069
    sget-object v3, Lcom/facebook/ads/redexgen/X/Cy;->A0Q:Ljava/lang/String;

    const/16 v2, 0xdf

    const/16 v1, 0x5e

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cy;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setFullScreen(Z)V
    .locals 1

    .line 33070
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0H:Z

    .line 33071
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0H:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0G:Z

    if-nez v0, :cond_0

    .line 33072
    new-instance v0, Lcom/facebook/ads/redexgen/X/fi;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/fi;-><init>(Lcom/facebook/ads/redexgen/X/Cy;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Cy;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 33073
    :cond_0
    return-void
.end method

.method public setRequestedVolume(F)V
    .locals 4

    .line 33074
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A00:F

    .line 33075
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0C:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A08:Lcom/facebook/ads/redexgen/X/fm;

    if-eq v1, v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0C:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cy;->A0P:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cy;->A0P:[Ljava/lang/String;

    const-string v1, "xC5rxgqNbqLUjjPrr"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A04:Lcom/facebook/ads/redexgen/X/fm;

    if-eq v3, v0, :cond_0

    .line 33076
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 33077
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public setVideoMPD(Ljava/lang/String;)V
    .locals 0

    .line 33078
    return-void
.end method

.method public setVideoStateChangeListener(Lcom/facebook/ads/redexgen/X/fn;)V
    .locals 0

    .line 33086
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0E:Lcom/facebook/ads/redexgen/X/fn;

    .line 33087
    return-void
.end method

.method public setup(Landroid/net/Uri;)V
    .locals 7

    .line 33088
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3h()V

    .line 33089
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0K:Z

    .line 33090
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A07:Landroid/net/Uri;

    .line 33091
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 33092
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Cy;->A09()Z

    .line 33093
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Cy;->A0A(Landroid/view/Surface;)Z

    .line 33094
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Cy;->A06:Landroid/media/MediaPlayer;

    .line 33095
    .local v1, "mMediaPlayer":Landroid/media/MediaPlayer;
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A04:Lcom/facebook/ads/redexgen/X/fm;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Cy;->setVideoState(Lcom/facebook/ads/redexgen/X/fm;)V

    goto :goto_0

    .line 33096
    .end local v1    # "mMediaPlayer":Landroid/media/MediaPlayer;
    :cond_0
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    .line 33097
    .restart local v1    # "mMediaPlayer":Landroid/media/MediaPlayer;
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/hX;->A00(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v2, 0x17b

    const/4 v1, 0x5

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cy;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33098
    invoke-direct {p0, v3, p1}, Lcom/facebook/ads/redexgen/X/Cy;->A05(Landroid/media/MediaPlayer;Landroid/net/Uri;)V

    .line 33099
    :goto_1
    invoke-virtual {v3, v5}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 33100
    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 33101
    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 33102
    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 33103
    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 33104
    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 33105
    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 33106
    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 33107
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 33108
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Cy;->A06:Landroid/media/MediaPlayer;

    .line 33109
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A08:Lcom/facebook/ads/redexgen/X/fm;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Cy;->setVideoState(Lcom/facebook/ads/redexgen/X/fm;)V

    goto :goto_2

    .line 33110
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33111
    :catch_0
    move-exception v6

    .line 33112
    .local v2, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A03:Lcom/facebook/ads/redexgen/X/fm;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Cy;->setVideoState(Lcom/facebook/ads/redexgen/X/fm;)V

    .line 33113
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A0N:Lcom/facebook/ads/redexgen/X/gi;

    .line 33114
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    .line 33115
    const/4 v0, 0x3

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3i(I)V

    .line 33116
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    .line 33117
    sget-object v4, Lcom/facebook/ads/redexgen/X/Cy;->A0Q:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x10

    const/16 v1, 0x31

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cy;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33118
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {p0, p0}, Lcom/facebook/ads/redexgen/X/Cy;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 33119
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Cy;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33120
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Cy;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p0, v0, v5, v5}, Lcom/facebook/ads/redexgen/X/Cy;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 33121
    :cond_2
    return-void
.end method
