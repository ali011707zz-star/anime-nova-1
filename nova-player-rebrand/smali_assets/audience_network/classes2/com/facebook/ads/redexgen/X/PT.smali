.class public final Lcom/facebook/ads/redexgen/X/PT;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ya;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/PJ;->A0g(Lcom/facebook/ads/redexgen/X/Re;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Re;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/PJ;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1538
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "YUGwJzzikBNzfLIllCMdkir2Jyj8DuFq"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ntVfVONdyCctXWp"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "AonpNDk7AlTTh7WnvPqW51ITIbVwFUJp"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "NJZ9S98WzFijxyBcJxql7T6JOIFmEfw7"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "8QFO"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "nOxceDp"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "zcnAPzBVA2CXXQsDQKs94da1Vf1b77Qu"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "s6TvhQwfXdUE9Ss2QaqLkXkKVbAwWXrL"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/PT;->A02:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/PJ;Lcom/facebook/ads/redexgen/X/Re;)V
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

    .line 57665
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PT;->A01:Lcom/facebook/ads/redexgen/X/PJ;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/PT;->A00:Lcom/facebook/ads/redexgen/X/Re;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACl(Lcom/facebook/ads/redexgen/X/Yb;)V
    .locals 4

    .line 57666
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Yb;->getToolbarActionMode()I

    move-result v1

    const/16 v0, 0x8

    if-ne v1, v0, :cond_0

    .line 57667
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A01:Lcom/facebook/ads/redexgen/X/PJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PJ;->A0d()V

    .line 57668
    :goto_0
    return-void

    .line 57669
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A01:Lcom/facebook/ads/redexgen/X/PJ;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/PJ;->A0G:Lcom/facebook/ads/redexgen/X/VI;

    sget-object v1, Lcom/facebook/ads/redexgen/X/VH;->A07:Lcom/facebook/ads/redexgen/X/VH;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VI;->A04(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;)V

    .line 57670
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A01:Lcom/facebook/ads/redexgen/X/PJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PJ;->A0l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57671
    return-void

    .line 57672
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/PT;->A01:Lcom/facebook/ads/redexgen/X/PJ;

    sget-object v1, Lcom/facebook/ads/redexgen/X/PT;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x66

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/PT;->A02:[Ljava/lang/String;

    const-string v1, "pLKL5MIsKfCUMWoMxvxDNCAoAO8BGlnS"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "7PsgTAKpTeXTqL7VuWAjeXRdKL6HZN4L"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/PJ;->A0i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57673
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PT;->A01:Lcom/facebook/ads/redexgen/X/PJ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A00:Lcom/facebook/ads/redexgen/X/Re;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PJ;->A0h(Lcom/facebook/ads/redexgen/X/Re;)V

    goto :goto_0

    .line 57674
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PT;->A01:Lcom/facebook/ads/redexgen/X/PJ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/PJ;->A0E:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AB0()V

    .line 57675
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PT;->A00:Lcom/facebook/ads/redexgen/X/Re;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Re;->finish(I)V

    goto :goto_0
.end method
