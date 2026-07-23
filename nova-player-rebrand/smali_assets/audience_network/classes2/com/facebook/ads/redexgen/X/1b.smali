.class public final Lcom/facebook/ads/redexgen/X/1b;
.super Lcom/facebook/ads/redexgen/X/AE;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/exoplayer/text/TextRenderer$ReplacementState;
    }
.end annotation


# static fields
.field public static A0H:[B

.field public static A0I:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:Lcom/facebook/ads/redexgen/X/qI;

.field public A06:Lcom/facebook/ads/redexgen/X/lq;

.field public A07:Lcom/facebook/ads/redexgen/X/8S;

.field public A08:Lcom/facebook/ads/redexgen/X/8P;

.field public A09:Lcom/facebook/ads/redexgen/X/8P;

.field public A0A:Z

.field public A0B:Z

.field public A0C:Z

.field public final A0D:Landroid/os/Handler;

.field public final A0E:Lcom/facebook/ads/redexgen/X/6z;

.field public final A0F:Lcom/facebook/ads/redexgen/X/EP;

.field public final A0G:Lcom/facebook/ads/redexgen/X/ES;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 109
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "58lW15hp88fFpLaSxErp"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "56QScXrV6I"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "DwEmmtKo2ODeTiA17rxauXwet98Z4"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "A4aLtxZMLOPLaVE6SeDzXnpOLTGefetw"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "FhOKuZuvLBWd8lghoK1mwxVLtzQRZ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "h1d8vpIJ83Cnf8DVjx4Ui7av1xQxYsFL"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "y1YT0hSXczs7bGZDGpuR"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "alxZNjekiwxoo3ZSsAAxphzspQJfVEZr"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/1b;->A0I:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/1b;->A09()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ES;Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/EP;)V
    .locals 2

    .line 6896
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/AE;-><init>(I)V

    .line 6897
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/ES;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A0G:Lcom/facebook/ads/redexgen/X/ES;

    .line 6898
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A0D:Landroid/os/Handler;

    .line 6899
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/1b;->A0F:Lcom/facebook/ads/redexgen/X/EP;

    .line 6900
    new-instance v0, Lcom/facebook/ads/redexgen/X/6z;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/6z;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A0E:Lcom/facebook/ads/redexgen/X/6z;

    .line 6901
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A02:J

    .line 6902
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A04:J

    .line 6903
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A03:J

    .line 6904
    return-void

    .line 6905
    :cond_0
    invoke-static {p2, p0}, Lcom/facebook/ads/redexgen/X/5C;->A0c(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    goto :goto_0
.end method

.method private A00()J
    .locals 4

    .line 6906
    iget v1, p0, Lcom/facebook/ads/redexgen/X/1b;->A01:I

    const/4 v0, -0x1

    const-wide v2, 0x7fffffffffffffffL

    if-ne v1, v0, :cond_0

    .line 6907
    return-wide v2

    .line 6908
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A09:Lcom/facebook/ads/redexgen/X/8P;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6909
    iget v1, p0, Lcom/facebook/ads/redexgen/X/1b;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A09:Lcom/facebook/ads/redexgen/X/8P;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8P;->A84()I

    move-result v0

    if-lt v1, v0, :cond_1

    :goto_0
    return-wide v2

    .line 6910
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1b;->A09:Lcom/facebook/ads/redexgen/X/8P;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A01:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8P;->A83(I)J

    move-result-wide v2

    goto :goto_0
.end method

.method private A01(J)J
    .locals 5
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "subtitle"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 6911
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A09:Lcom/facebook/ads/redexgen/X/8P;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/8P;->A8a(J)I

    move-result v4

    .line 6912
    .local v0, "nextEventTimeIndex":I
    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A09:Lcom/facebook/ads/redexgen/X/8P;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8P;->A84()I

    move-result v0

    if-nez v0, :cond_1

    .line 6913
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A09:Lcom/facebook/ads/redexgen/X/8P;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/oz;->A01:J

    return-wide v0

    .line 6914
    :cond_1
    const/4 v3, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/1b;->A0I:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/1b;->A0I:[Ljava/lang/String;

    const-string v1, "dWbBH4lKinuUlTA8CpNFonpmnzuPl"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "MDue3s6tkJ65MZJ0TxYFZvpfeIb1w"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_4

    .line 6915
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/1b;->A09:Lcom/facebook/ads/redexgen/X/8P;

    sget-object v1, Lcom/facebook/ads/redexgen/X/1b;->A0I:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A09:Lcom/facebook/ads/redexgen/X/8P;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8P;->A84()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/8P;->A83(I)J

    move-result-wide v0

    .line 6916
    :goto_0
    return-wide v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/1b;->A0I:[Ljava/lang/String;

    const-string v1, "us0wUp64B7rq5nQeuQUWAOSOIfPFOl8I"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A09:Lcom/facebook/ads/redexgen/X/8P;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8P;->A84()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/8P;->A83(I)J

    move-result-wide v0

    goto :goto_0

    .line 6917
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1b;->A09:Lcom/facebook/ads/redexgen/X/8P;

    add-int/lit8 v0, v4, -0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8P;->A83(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private A02(J)J
    .locals 6
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 6918
    const/4 v5, 0x1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v3

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 6919
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/1b;->A04:J

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    :goto_1
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 6920
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A04:J

    sub-long/2addr p1, v0

    return-wide p1

    .line 6921
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 6922
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/1b;->A0H:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/1b;->A0I:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/1b;->A0I:[Ljava/lang/String;

    const-string v1, "1YRuRVntTKbD5w1SSS8awuyRss3tM"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "HmFGzdsys3t1iPkkAdwtO8Q44Z9aJ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7a

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04()V
    .locals 4

    .line 6923
    nop

    .line 6924
    invoke-static {}, Lcom/facebook/ads/redexgen/X/jW;->A01()Ljava/util/List;

    move-result-object v3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A03:J

    .line 6925
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/1b;->A02(J)J

    move-result-wide v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/pR;

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/ads/redexgen/X/pR;-><init>(Ljava/util/List;J)V

    .line 6926
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/1b;->A0B(Lcom/facebook/ads/redexgen/X/pR;)V

    .line 6927
    return-void
.end method

.method private A05()V
    .locals 2

    .line 6928
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A0C:Z

    .line 6929
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1b;->A0F:Lcom/facebook/ads/redexgen/X/EP;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A05:Lcom/facebook/ads/redexgen/X/qI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/qI;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/EP;->A5K(Lcom/facebook/ads/redexgen/X/qI;)Lcom/facebook/ads/redexgen/X/lq;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A06:Lcom/facebook/ads/redexgen/X/lq;

    .line 6930
    return-void
.end method

.method private A06()V
    .locals 2

    .line 6931
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/1b;->A07:Lcom/facebook/ads/redexgen/X/8S;

    .line 6932
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A01:I

    .line 6933
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A09:Lcom/facebook/ads/redexgen/X/8P;

    if-eqz v0, :cond_0

    .line 6934
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A09:Lcom/facebook/ads/redexgen/X/8P;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8P;->A0B()V

    .line 6935
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/1b;->A09:Lcom/facebook/ads/redexgen/X/8P;

    .line 6936
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A08:Lcom/facebook/ads/redexgen/X/8P;

    if-eqz v0, :cond_1

    .line 6937
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A08:Lcom/facebook/ads/redexgen/X/8P;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8P;->A0B()V

    .line 6938
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/1b;->A08:Lcom/facebook/ads/redexgen/X/8P;

    .line 6939
    :cond_1
    return-void
.end method

.method private A07()V
    .locals 1

    .line 6940
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1b;->A06()V

    .line 6941
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A06:Lcom/facebook/ads/redexgen/X/lq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/lq;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/60;->AHb()V

    .line 6942
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A06:Lcom/facebook/ads/redexgen/X/lq;

    .line 6943
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A00:I

    .line 6944
    return-void
.end method

.method private A08()V
    .locals 0

    .line 6945
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1b;->A07()V

    .line 6946
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1b;->A05()V

    .line 6947
    return-void
.end method

.method public static A09()V
    .locals 1

    const/16 v0, 0x33

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/1b;->A0H:[B

    return-void

    :array_0
    .array-data 1
        0x59t
        0x7ft
        0x68t
        0x7et
        0x63t
        0x7et
        0x66t
        0x6ft
        0x2at
        0x6et
        0x6ft
        0x69t
        0x65t
        0x6et
        0x63t
        0x64t
        0x6dt
        0x2at
        0x6ct
        0x6bt
        0x63t
        0x66t
        0x6ft
        0x6et
        0x24t
        0x2at
        0x79t
        0x7et
        0x78t
        0x6ft
        0x6bt
        0x67t
        0x4ct
        0x65t
        0x78t
        0x67t
        0x6bt
        0x7et
        0x37t
        0x39t
        0x8t
        0x15t
        0x19t
        0x3ft
        0x8t
        0x3t
        0x9t
        0x8t
        0x1ft
        0x8t
        0x1ft
    .end array-data
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/pR;)V
    .locals 2

    .line 6948
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1b;->A0G:Lcom/facebook/ads/redexgen/X/ES;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/pR;->A01:Ljava/util/List;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/ES;->ADa(Ljava/util/List;)V

    .line 6949
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A0G:Lcom/facebook/ads/redexgen/X/ES;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/ES;->ADZ(Lcom/facebook/ads/redexgen/X/pR;)V

    .line 6950
    return-void
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/pR;)V
    .locals 2

    .line 6951
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A0D:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 6952
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1b;->A0D:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 6953
    :goto_0
    return-void

    .line 6954
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/1b;->A0A(Lcom/facebook/ads/redexgen/X/pR;)V

    goto :goto_0
.end method

.method private A0C(Lcom/facebook/ads/redexgen/X/ER;)V
    .locals 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "NEW_METHOD"
        }
        value = "Method to propagate any SubtitleDecoder Error upwards"
    .end annotation

    .line 6955
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A0D:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 6956
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1b;->A0D:Landroid/os/Handler;

    .line 6957
    const/4 v0, 0x1

    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6958
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 6959
    :cond_0
    return-void
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/lj;)V
    .locals 4

    .line 6960
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x27

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1b;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A05:Lcom/facebook/ads/redexgen/X/qI;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x27

    const/16 v1, 0xc

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1b;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, p1}, Lcom/facebook/ads/redexgen/X/4g;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6961
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1b;->A05:Lcom/facebook/ads/redexgen/X/qI;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ER;

    invoke-direct {v0, v1, p1}, Lcom/facebook/ads/redexgen/X/ER;-><init>(Lcom/facebook/ads/redexgen/X/qI;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/1b;->A0C(Lcom/facebook/ads/redexgen/X/ER;)V

    .line 6962
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1b;->A04()V

    .line 6963
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1b;->A08()V

    .line 6964
    return-void
.end method


# virtual methods
.method public final A1Z()V
    .locals 2

    .line 6965
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A05:Lcom/facebook/ads/redexgen/X/qI;

    .line 6966
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A02:J

    .line 6967
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1b;->A04()V

    .line 6968
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A04:J

    .line 6969
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A03:J

    .line 6970
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1b;->A07()V

    .line 6971
    return-void
.end method

.method public final A1a(JZ)V
    .locals 2

    .line 6972
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/1b;->A03:J

    .line 6973
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1b;->A04()V

    .line 6974
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A0A:Z

    .line 6975
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A0B:Z

    .line 6976
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A02:J

    .line 6977
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A00:I

    if-eqz v0, :cond_0

    .line 6978
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1b;->A08()V

    .line 6979
    :goto_0
    return-void

    .line 6980
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1b;->A06()V

    .line 6981
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A06:Lcom/facebook/ads/redexgen/X/lq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/lq;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/60;->flush()V

    goto :goto_0
.end method

.method public final A1c([Lcom/facebook/ads/redexgen/X/qI;JJ)V
    .locals 1

    .line 6982
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/1b;->A04:J

    .line 6983
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A05:Lcom/facebook/ads/redexgen/X/qI;

    .line 6984
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A06:Lcom/facebook/ads/redexgen/X/lq;

    if-eqz v0, :cond_0

    .line 6985
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A00:I

    .line 6986
    :goto_0
    return-void

    .line 6987
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1b;->A05()V

    goto :goto_0
.end method

.method public final AAP()Z
    .locals 1

    .line 6988
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A0B:Z

    return v0
.end method

.method public final AAe()Z
    .locals 1

    .line 6989
    const/4 v0, 0x1

    return v0
.end method

.method public final AIX(JJ)V
    .locals 9

    .line 6990
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/1b;->A03:J

    .line 6991
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AE;->AAN()Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/1b;->A02:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/1b;->A02:J

    cmp-long v0, p1, v1

    if-ltz v0, :cond_0

    .line 6992
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1b;->A06()V

    .line 6993
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/1b;->A0B:Z

    .line 6994
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A0B:Z

    if-eqz v0, :cond_1

    .line 6995
    return-void

    .line 6996
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A08:Lcom/facebook/ads/redexgen/X/8P;

    if-nez v0, :cond_2

    .line 6997
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A06:Lcom/facebook/ads/redexgen/X/lq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/lq;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/lq;->AJh(J)V

    .line 6998
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A06:Lcom/facebook/ads/redexgen/X/lq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/lq;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/60;->A5t()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8P;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A08:Lcom/facebook/ads/redexgen/X/8P;

    goto :goto_0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/lj; {:try_start_0 .. :try_end_0} :catch_0

    .line 6999
    :catch_0
    move-exception v0

    .line 7000
    .local v0, "e":Lcom/facebook/ads/redexgen/X/lj;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/1b;->A0D(Lcom/facebook/ads/redexgen/X/lj;)V

    .line 7001
    return-void

    .line 7002
    .end local v0    # "e":Lcom/facebook/ads/redexgen/X/lj;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AE;->A9A()I

    move-result v0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    .line 7003
    return-void

    .line 7004
    :cond_3
    const/4 v8, 0x0

    .line 7005
    .local v0, "textRendererNeedsUpdate":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A09:Lcom/facebook/ads/redexgen/X/8P;

    if-eqz v0, :cond_4

    .line 7006
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1b;->A00()J

    move-result-wide v1

    .line 7007
    .local v3, "subtitleNextEventTimeUs":J
    :goto_1
    cmp-long v0, v1, p1

    if-gtz v0, :cond_4

    .line 7008
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A01:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A01:I

    .line 7009
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1b;->A00()J

    move-result-wide v1

    .line 7010
    const/4 v8, 0x1

    goto :goto_1

    .line 7011
    .end local v3    # "subtitleNextEventTimeUs":J
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A08:Lcom/facebook/ads/redexgen/X/8P;

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 7012
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/1b;->A08:Lcom/facebook/ads/redexgen/X/8P;

    .line 7013
    .local v3, "nextSubtitle":Lcom/facebook/ads/redexgen/X/8P;
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/5u;->A05()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 7014
    if-nez v8, :cond_5

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1b;->A00()J

    move-result-wide v6

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v0, v6, v1

    if-nez v0, :cond_5

    .line 7015
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A00:I

    if-ne v0, v4, :cond_7

    .line 7016
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1b;->A08()V

    .line 7017
    .end local v3    # "nextSubtitle":Lcom/facebook/ads/redexgen/X/8P;
    :cond_5
    :goto_2
    if-eqz v8, :cond_6

    .line 7018
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A09:Lcom/facebook/ads/redexgen/X/8P;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7019
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/1b;->A01(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/1b;->A02(J)J

    move-result-wide v0

    .line 7020
    .local v5, "presentationTimeUs":J
    nop

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/1b;->A09:Lcom/facebook/ads/redexgen/X/8P;

    invoke-virtual {v2, p1, p2}, Lcom/facebook/ads/redexgen/X/8P;->A7X(J)Ljava/util/List;

    move-result-object v6

    new-instance v2, Lcom/facebook/ads/redexgen/X/pR;

    invoke-direct {v2, v6, v0, v1}, Lcom/facebook/ads/redexgen/X/pR;-><init>(Ljava/util/List;J)V

    .line 7021
    .local v3, "cueGroup":Lcom/facebook/ads/redexgen/X/pR;
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/1b;->A0B(Lcom/facebook/ads/redexgen/X/pR;)V

    .line 7022
    .end local v3    # "cueGroup":Lcom/facebook/ads/redexgen/X/pR;
    .end local v5    # "presentationTimeUs":J
    :cond_6
    iget v6, p0, Lcom/facebook/ads/redexgen/X/1b;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/1b;->A0I:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4f

    if-eq v1, v0, :cond_b

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 7023
    :cond_7
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1b;->A06()V

    .line 7024
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/1b;->A0B:Z

    goto :goto_2

    .line 7025
    :cond_8
    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/oz;->A01:J

    cmp-long v2, v0, p1

    if-gtz v2, :cond_5

    .line 7026
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/1b;->A09:Lcom/facebook/ads/redexgen/X/8P;

    sget-object v1, Lcom/facebook/ads/redexgen/X/1b;->A0I:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/1b;->A0I:[Ljava/lang/String;

    const-string v1, "SM2l9fwyY7vSK8U9dCan"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "PLBzRsO91bLUZoRphjDr"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v7, :cond_9

    .line 7027
    :goto_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A09:Lcom/facebook/ads/redexgen/X/8P;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8P;->A0B()V

    .line 7028
    :cond_9
    invoke-virtual {v6, p1, p2}, Lcom/facebook/ads/redexgen/X/8P;->A8a(J)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A01:I

    .line 7029
    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/1b;->A09:Lcom/facebook/ads/redexgen/X/8P;

    .line 7030
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/1b;->A08:Lcom/facebook/ads/redexgen/X/8P;

    .line 7031
    const/4 v8, 0x1

    goto :goto_2

    :cond_a
    sget-object v2, Lcom/facebook/ads/redexgen/X/1b;->A0I:[Ljava/lang/String;

    const-string v1, "uDUYlaOON0"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v7, :cond_9

    goto :goto_3

    :cond_b
    sget-object v2, Lcom/facebook/ads/redexgen/X/1b;->A0I:[Ljava/lang/String;

    const-string v1, "ML0YoWWFYnm1pIYkMDlj"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "WzY2c9YM67lXJGPj7nnt"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ne v6, v4, :cond_c

    .line 7032
    return-void

    .line 7033
    :cond_c
    :goto_4
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A0A:Z

    if-nez v0, :cond_14

    .line 7034
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/1b;->A07:Lcom/facebook/ads/redexgen/X/8S;

    .line 7035
    .local v3, "nextInputBuffer":Lcom/facebook/ads/redexgen/X/8S;
    if-nez v2, :cond_e

    .line 7036
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A06:Lcom/facebook/ads/redexgen/X/lq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/lq;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/60;->A5r()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/8S;

    .line 7037
    if-nez v2, :cond_d

    goto :goto_6

    .line 7038
    :cond_d
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/1b;->A07:Lcom/facebook/ads/redexgen/X/8S;

    .line 7039
    :cond_e
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A00:I

    if-ne v0, v5, :cond_f

    .line 7040
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/5u;->A02(I)V

    .line 7041
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A06:Lcom/facebook/ads/redexgen/X/lq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/lq;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/60;->AHJ(Ljava/lang/Object;)V

    .line 7042
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/1b;->A07:Lcom/facebook/ads/redexgen/X/8S;

    .line 7043
    iput v4, p0, Lcom/facebook/ads/redexgen/X/1b;->A00:I

    goto :goto_7

    .line 7044
    :cond_f
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A0E:Lcom/facebook/ads/redexgen/X/6z;

    const/4 v6, 0x0

    invoke-virtual {p0, v0, v2, v6}, Lcom/facebook/ads/redexgen/X/AE;->A1R(Lcom/facebook/ads/redexgen/X/6z;Lcom/facebook/ads/redexgen/X/p0;I)I

    move-result v1

    .line 7045
    .local v5, "result":I
    const/4 v0, -0x4

    if-ne v1, v0, :cond_13

    .line 7046
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/5u;->A05()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 7047
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/1b;->A0A:Z

    .line 7048
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/1b;->A0C:Z

    .line 7049
    .end local v7
    :goto_5
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A0C:Z

    if-nez v0, :cond_c

    .line 7050
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A06:Lcom/facebook/ads/redexgen/X/lq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/lq;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/60;->AHJ(Ljava/lang/Object;)V

    .line 7051
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/1b;->A07:Lcom/facebook/ads/redexgen/X/8S;

    goto :goto_4

    .line 7052
    :cond_10
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A0E:Lcom/facebook/ads/redexgen/X/6z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6z;->A00:Lcom/facebook/ads/redexgen/X/qI;

    .line 7053
    .local v7, "format":Lcom/facebook/ads/redexgen/X/qI;
    if-nez v0, :cond_11

    goto :goto_8

    .line 7054
    :cond_11
    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A0M:J

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/8S;->A00:J

    .line 7055
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/p0;->A0B()V

    .line 7056
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/1b;->A0C:Z

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/5u;->A07()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v6, 0x1

    :cond_12
    and-int/2addr v6, v1

    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/1b;->A0C:Z

    goto :goto_5

    .line 7057
    :cond_13
    const/4 v0, -0x3

    if-ne v1, v0, :cond_c

    .line 7058
    return-void

    .line 7059
    :goto_6
    return-void

    .line 7060
    :goto_7
    return-void

    .line 7061
    :goto_8
    return-void
    :try_end_1
    .catch Lcom/facebook/ads/redexgen/X/lj; {:try_start_1 .. :try_end_1} :catch_1

    .line 7062
    :catch_1
    move-exception v0

    .line 7063
    .local v1, "e":Lcom/facebook/ads/redexgen/X/lj;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/1b;->A0D(Lcom/facebook/ads/redexgen/X/lj;)V

    .line 7064
    .end local v1    # "e":Lcom/facebook/ads/redexgen/X/lj;
    :cond_14
    return-void
.end method

.method public final AKM(Lcom/facebook/ads/redexgen/X/qI;)I
    .locals 1

    .line 7065
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A0F:Lcom/facebook/ads/redexgen/X/EP;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/EP;->AKN(Lcom/facebook/ads/redexgen/X/qI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7066
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7i;->A00(I)I

    move-result v0

    return v0

    .line 7067
    :cond_0
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3J;->A0E(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7068
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7i;->A00(I)I

    move-result v0

    return v0

    .line 7069
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7i;->A00(I)I

    move-result v0

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 3

    .line 7070
    const/16 v2, 0x27

    const/16 v1, 0xc

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1b;->A03(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 7071
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 7072
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 7073
    :pswitch_0
    return v1

    .line 7074
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/pR;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/1b;->A0A(Lcom/facebook/ads/redexgen/X/pR;)V

    .line 7075
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
