.class public final Lcom/facebook/ads/redexgen/X/ZW;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/gZ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/ZR;->A05(Lcom/facebook/ads/redexgen/X/ge;Lcom/facebook/ads/redexgen/X/TP;Lcom/facebook/ads/redexgen/X/fv;)Lcom/facebook/ads/redexgen/X/CY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ge;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/WA;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/WA;Lcom/facebook/ads/redexgen/X/ge;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 75563
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZW;->A01:Lcom/facebook/ads/redexgen/X/WA;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/ZW;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A7z()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 75564
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ZW;->A01:Lcom/facebook/ads/redexgen/X/WA;

    .line 75565
    invoke-static {}, Lcom/facebook/ads/redexgen/X/UG;->A00()Lcom/facebook/ads/redexgen/X/UG;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZW;->A00:Lcom/facebook/ads/redexgen/X/ge;

    .line 75566
    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UG;->A01(Lcom/facebook/ads/redexgen/X/T8;Z)Lcom/facebook/ads/redexgen/X/ZJ;

    move-result-object v0

    .line 75567
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A06()Ljava/util/Map;

    move-result-object v0

    .line 75568
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/WA;->A0A(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
