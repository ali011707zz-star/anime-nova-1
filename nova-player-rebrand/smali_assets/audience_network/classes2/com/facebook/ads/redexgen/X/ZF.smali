.class public final Lcom/facebook/ads/redexgen/X/ZF;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Uh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/ZD;-><init>(Lcom/facebook/ads/redexgen/X/ge;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ZD;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ZD;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 75004
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZF;->A00:Lcom/facebook/ads/redexgen/X/ZD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AIc(Ljava/lang/String;)V
    .locals 2

    .line 75005
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZF;->A00:Lcom/facebook/ads/redexgen/X/ZD;

    sget v0, Lcom/facebook/ads/redexgen/X/Td;->A2O:I

    invoke-static {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/ZD;->A06(Lcom/facebook/ads/redexgen/X/ZD;ILjava/lang/String;)V

    .line 75006
    return-void
.end method

.method public final AId(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 75007
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZF;->A00:Lcom/facebook/ads/redexgen/X/ZD;

    sget v0, Lcom/facebook/ads/redexgen/X/Td;->A2O:I

    invoke-static {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/ZD;->A06(Lcom/facebook/ads/redexgen/X/ZD;ILjava/lang/String;)V

    .line 75008
    return-void
.end method
