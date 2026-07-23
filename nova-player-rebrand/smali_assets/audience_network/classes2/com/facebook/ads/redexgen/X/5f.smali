.class public final Lcom/facebook/ads/redexgen/X/5f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    value = "Using fbDataSpecExtension instead of Object"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/5i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field public static A0A:[B


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:Landroid/net/Uri;

.field public A06:Lcom/facebook/ads/redexgen/X/ML;

.field public A07:Ljava/lang/String;

.field public A08:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public A09:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5f;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 15067
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15068
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A01:I

    .line 15069
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A08:Ljava/util/Map;

    .line 15070
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A02:J

    .line 15071
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5i;)V
    .locals 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Using fbDataSpecExtension instead of Object"
    .end annotation

    .line 15072
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15073
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/5i;->A06:Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A05:Landroid/net/Uri;

    .line 15074
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/5i;->A05:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A04:J

    .line 15075
    iget v0, p1, Lcom/facebook/ads/redexgen/X/5i;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A01:I

    .line 15076
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/5i;->A0A:[B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A09:[B

    .line 15077
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/5i;->A09:Ljava/util/Map;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A08:Ljava/util/Map;

    .line 15078
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/5i;->A04:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A03:J

    .line 15079
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/5i;->A03:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A02:J

    .line 15080
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/5i;->A08:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A07:Ljava/lang/String;

    .line 15081
    iget v0, p1, Lcom/facebook/ads/redexgen/X/5i;->A00:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A00:I

    .line 15082
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/5i;->A07:Lcom/facebook/ads/redexgen/X/ML;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A06:Lcom/facebook/ads/redexgen/X/ML;

    .line 15083
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/5i;Lcom/facebook/ads/redexgen/X/5e;)V
    .locals 0

    .line 15084
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5f;-><init>(Lcom/facebook/ads/redexgen/X/5i;)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/5f;->A0A:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xf

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5f;->A0A:[B

    return-void

    :array_0
    .array-data 1
        -0x23t
        -0xft
        -0x12t
        -0x57t
        -0x2t
        -0x5t
        -0xet
        -0x57t
        -0xat
        -0x2t
        -0x4t
        -0x3t
        -0x57t
        -0x15t
        -0x12t
        -0x57t
        -0x4t
        -0x12t
        -0x3t
        -0x49t
    .end array-data
.end method


# virtual methods
.method public final A02(I)Lcom/facebook/ads/redexgen/X/5f;
    .locals 0

    .line 15085
    iput p1, p0, Lcom/facebook/ads/redexgen/X/5f;->A00:I

    .line 15086
    return-object p0
.end method

.method public final A03(J)Lcom/facebook/ads/redexgen/X/5f;
    .locals 0

    .line 15087
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/5f;->A02:J

    .line 15088
    return-object p0
.end method

.method public final A04(J)Lcom/facebook/ads/redexgen/X/5f;
    .locals 0

    .line 15089
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/5f;->A03:J

    .line 15090
    return-object p0
.end method

.method public final A05(J)Lcom/facebook/ads/redexgen/X/5f;
    .locals 0

    .line 15091
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/5f;->A04:J

    .line 15092
    return-object p0
.end method

.method public final A06(Landroid/net/Uri;)Lcom/facebook/ads/redexgen/X/5f;
    .locals 0

    .line 15093
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5f;->A05:Landroid/net/Uri;

    .line 15094
    return-object p0
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/ML;)Lcom/facebook/ads/redexgen/X/5f;
    .locals 0
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Using fbDataSpecExtension instead of Object"
    .end annotation

    .line 15095
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5f;->A06:Lcom/facebook/ads/redexgen/X/ML;

    .line 15096
    return-object p0
.end method

.method public final A08(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/5f;
    .locals 0

    .line 15097
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5f;->A07:Ljava/lang/String;

    .line 15098
    return-object p0
.end method

.method public final A09()Lcom/facebook/ads/redexgen/X/5i;
    .locals 17
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "D50990955; Ensure that fbDataSpecExtension is not null"
    .end annotation

    .line 15099
    move-object/from16 v1, p0

    iget-object v4, v1, Lcom/facebook/ads/redexgen/X/5f;->A05:Landroid/net/Uri;

    const/4 v3, 0x0

    const/16 v2, 0x14

    const/16 v0, 0x7a

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/5f;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/3y;->A03(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15100
    new-instance v2, Lcom/facebook/ads/redexgen/X/5i;

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/5f;->A05:Landroid/net/Uri;

    iget-wide v4, v1, Lcom/facebook/ads/redexgen/X/5f;->A04:J

    iget v6, v1, Lcom/facebook/ads/redexgen/X/5f;->A01:I

    iget-object v7, v1, Lcom/facebook/ads/redexgen/X/5f;->A09:[B

    iget-object v8, v1, Lcom/facebook/ads/redexgen/X/5f;->A08:Ljava/util/Map;

    iget-wide v9, v1, Lcom/facebook/ads/redexgen/X/5f;->A03:J

    iget-wide v11, v1, Lcom/facebook/ads/redexgen/X/5f;->A02:J

    iget-object v13, v1, Lcom/facebook/ads/redexgen/X/5f;->A07:Ljava/lang/String;

    iget v14, v1, Lcom/facebook/ads/redexgen/X/5f;->A00:I

    .line 15101
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/5f;->A06:Lcom/facebook/ads/redexgen/X/ML;

    if-eqz v0, :cond_0

    iget-object v15, v1, Lcom/facebook/ads/redexgen/X/5f;->A06:Lcom/facebook/ads/redexgen/X/ML;

    :goto_0
    const/16 v16, 0x0

    invoke-direct/range {v2 .. v16}, Lcom/facebook/ads/redexgen/X/5i;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILcom/facebook/ads/redexgen/X/ML;Lcom/facebook/ads/redexgen/X/5e;)V

    .line 15102
    return-object v2

    .line 15103
    :cond_0
    new-instance v15, Lcom/facebook/ads/redexgen/X/ML;

    invoke-direct {v15}, Lcom/facebook/ads/redexgen/X/ML;-><init>()V

    goto :goto_0
.end method
