.class public final Lcom/facebook/ads/redexgen/X/EG;
.super Lcom/facebook/ads/redexgen/X/Od;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/EF;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/ei;Ljava/lang/String;ZIIZLandroid/os/Bundle;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/er;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/EF;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/EF;DDDZ)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 34697
    move-object v0, p0

    iput-object p1, v0, Lcom/facebook/ads/redexgen/X/EG;->A00:Lcom/facebook/ads/redexgen/X/EF;

    move-object v0, p0

    move/from16 v7, p8

    move-wide v5, p6

    move-wide v3, p4

    move-wide v1, p2

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/Od;-><init>(DDDZ)V

    return-void
.end method


# virtual methods
.method public final A00(ZZLcom/facebook/ads/redexgen/X/Of;)V
    .locals 4

    .line 34698
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EG;->A00:Lcom/facebook/ads/redexgen/X/EF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/EF;->A0G(Lcom/facebook/ads/redexgen/X/EF;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A0z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EG;->A00:Lcom/facebook/ads/redexgen/X/EF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/EF;->A0Y(Lcom/facebook/ads/redexgen/X/EF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34699
    return-void

    .line 34700
    :cond_0
    if-eqz p2, :cond_1

    .line 34701
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/EG;->A00:Lcom/facebook/ads/redexgen/X/EF;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0a(Lcom/facebook/ads/redexgen/X/EF;Z)Z

    .line 34702
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/EG;->A00:Lcom/facebook/ads/redexgen/X/EF;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EG;->A00:Lcom/facebook/ads/redexgen/X/EF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/EF;->A0I(Lcom/facebook/ads/redexgen/X/EF;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/EG;->A00:Lcom/facebook/ads/redexgen/X/EF;

    sget-object v0, Lcom/facebook/ads/redexgen/X/ek;->A0B:Lcom/facebook/ads/redexgen/X/ek;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0L(Lcom/facebook/ads/redexgen/X/EF;Lcom/facebook/ads/redexgen/X/ek;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0Q(Lcom/facebook/ads/redexgen/X/EF;Ljava/lang/String;Ljava/util/Map;)V

    .line 34703
    :cond_1
    return-void
.end method
