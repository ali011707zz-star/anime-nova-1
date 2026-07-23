.class public final Lcom/facebook/ads/redexgen/X/Fr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/cq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Fq;->A05(Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Y2;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/e5;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/e5;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Fq;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 742
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "9PywuU4GHiHNyuQqsV2hRMSIWFgkBIXF"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "4f29GwA2drhXCGLW73s"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "OBDvTIY6Fo2yo"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "qWjLV5L5oYfn1ENZQ7wZqAcQOQTzRMSI"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "H9BrF"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "yMivREoxcX9yTTtt7Y5NvuvowO"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "wlJRq0Wi48iVBacAp"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "IhU4F2XwKRFLShSdQLhvvlqnDQutiuLd"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Fr;->A02:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Fq;Lcom/facebook/ads/redexgen/X/e5;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36412
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Fr;->A01:Lcom/facebook/ads/redexgen/X/Fq;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Fr;->A00:Lcom/facebook/ads/redexgen/X/e5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACz()V
    .locals 4

    .line 36413
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fr;->A00:Lcom/facebook/ads/redexgen/X/e5;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/e5;->A02()I

    move-result v0

    if-nez v0, :cond_0

    .line 36414
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fr;->A01:Lcom/facebook/ads/redexgen/X/Fq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Fq;->A03(Lcom/facebook/ads/redexgen/X/Fq;)Lcom/facebook/ads/redexgen/X/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fp;->A0U()V

    .line 36415
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fr;->A01:Lcom/facebook/ads/redexgen/X/Fq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Fq;->A04(Lcom/facebook/ads/redexgen/X/Fq;)Lcom/facebook/ads/redexgen/X/fp;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 36416
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Fr;->A01:Lcom/facebook/ads/redexgen/X/Fq;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fr;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x48

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fr;->A02:[Ljava/lang/String;

    const-string v1, "tTbulj5vBI36HvBMxQ95Zo46YoefRMyT"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Fq;->A04(Lcom/facebook/ads/redexgen/X/Fq;)Lcom/facebook/ads/redexgen/X/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fp;->A0U()V

    .line 36417
    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
