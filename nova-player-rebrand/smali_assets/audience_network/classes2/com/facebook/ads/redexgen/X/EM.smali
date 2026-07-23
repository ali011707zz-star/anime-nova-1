.class public final Lcom/facebook/ads/redexgen/X/EM;
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
        "Lcom/facebook/ads/redexgen/X/4A;",
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

    .line 707
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Etf6rxr38TN0vQCp7eNtUvsDOmNclbJq"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "tsAjjvZCMDWdS"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "8hGTWRVePtIxVw2NOXuq9knVHvw3DPvW"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "EWxkCjZIostDvyF"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "5rZAWcCWfjjM2"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "LrhlSMt3F2A2PPkpDiBfjHpLA"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "jQk7ZNmPb7V9ueUuvUfiKmSE"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "mvg7pIDRu6IgLugvRarlC3XDTGoYv5EO"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/EM;->A01:[Ljava/lang/String;

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

    .line 34739
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/EM;->A00:Lcom/facebook/ads/redexgen/X/4L;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UN;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/4A;)V
    .locals 5

    .line 34740
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/EB;->A00()I

    move-result v4

    .line 34741
    .local v0, "currentPositionMS":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EM;->A00:Lcom/facebook/ads/redexgen/X/4L;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/4L;->A00:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EM;->A00:Lcom/facebook/ads/redexgen/X/4L;

    .line 34742
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4L;->A0A(Lcom/facebook/ads/redexgen/X/4L;)Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getDuration()I

    move-result v0

    if-ne v4, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EM;->A00:Lcom/facebook/ads/redexgen/X/4L;

    .line 34743
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4L;->A0A(Lcom/facebook/ads/redexgen/X/4L;)Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getDuration()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EM;->A00:Lcom/facebook/ads/redexgen/X/4L;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/4L;->A00:I

    if-le v1, v0, :cond_0

    .line 34744
    return-void

    .line 34745
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/EM;->A00:Lcom/facebook/ads/redexgen/X/4L;

    sget-object v1, Lcom/facebook/ads/redexgen/X/EM;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/EM;->A01:[Ljava/lang/String;

    const-string v1, "7AA42mFgyTVlZSuOszNfTs49"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/EF;->A0k(I)V

    .line 34746
    return-void

    :cond_1
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
            "Lcom/facebook/ads/redexgen/X/4A;",
            ">;"
        }
    .end annotation

    .line 34747
    const-class v0, Lcom/facebook/ads/redexgen/X/4A;

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

    .line 34748
    check-cast p1, Lcom/facebook/ads/redexgen/X/4A;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/EM;->A00(Lcom/facebook/ads/redexgen/X/4A;)V

    return-void
.end method
