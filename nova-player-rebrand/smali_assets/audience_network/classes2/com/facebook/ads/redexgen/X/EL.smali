.class public final Lcom/facebook/ads/redexgen/X/EL;
.super Lcom/facebook/ads/redexgen/X/UN;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/4L;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/UN<",
        "Lcom/facebook/ads/redexgen/X/4K;",
        ">;"
    }
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4L;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 706
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Xm4oO1fgaoMOjj45N8r00LATVp4gHrYG"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "MO5WiyOQHdAIBAUWSCIdsXDipyRYP8jB"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "8ZD7midsUGLLHTawsvmUwyHXKE63ocNK"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "eXsxAyUW"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "KTVY2IhXiCn688zdyYvQYy9fTV"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "AuZpLEz4ubgydEKdqdaVeIvdhtRZUWrW"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "O3ESmZOEeO27LGblO6LyKeoijHa02l1o"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/EL;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4L;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 34726
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/EL;->A00:Lcom/facebook/ads/redexgen/X/4L;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UN;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/4K;)V
    .locals 5

    .line 34727
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/EB;->A00()I

    move-result v4

    .line 34728
    .local v0, "currentPosition":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4K;->A01()I

    move-result v1

    .line 34729
    .local v1, "duration":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EL;->A00:Lcom/facebook/ads/redexgen/X/4L;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/4L;->A00:I

    if-lez v0, :cond_0

    if-ne v4, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EL;->A00:Lcom/facebook/ads/redexgen/X/4L;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/4L;->A00:I

    if-le v1, v0, :cond_0

    .line 34730
    return-void

    .line 34731
    :cond_0
    add-int/lit16 v0, v4, 0x1f4

    if-ge v1, v0, :cond_2

    .line 34732
    if-nez v1, :cond_1

    .line 34733
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/EL;->A00:Lcom/facebook/ads/redexgen/X/4L;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EL;->A00:Lcom/facebook/ads/redexgen/X/4L;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/4L;->A00:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0j(I)V

    .line 34734
    :goto_0
    return-void

    .line 34735
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EL;->A00:Lcom/facebook/ads/redexgen/X/4L;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/EF;->A0j(I)V

    goto :goto_0

    .line 34736
    :cond_2
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/EL;->A00:Lcom/facebook/ads/redexgen/X/4L;

    sget-object v2, Lcom/facebook/ads/redexgen/X/EL;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/EL;->A01:[Ljava/lang/String;

    const-string v1, "eYEuq0G9XeIp1YNIhTPdTiyuyz"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "ZD2QUH1g"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/EF;->A0j(I)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A01()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/ads/redexgen/X/4K;",
            ">;"
        }
    .end annotation

    .line 34737
    const-class v0, Lcom/facebook/ads/redexgen/X/4K;

    return-object v0
.end method

.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/UL;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 34738
    check-cast p1, Lcom/facebook/ads/redexgen/X/4K;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/EL;->A00(Lcom/facebook/ads/redexgen/X/4K;)V

    return-void
.end method
