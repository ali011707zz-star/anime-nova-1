.class public final Lcom/facebook/ads/redexgen/X/KP;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/bU;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/KE;-><init>(Lcom/facebook/ads/redexgen/X/c7;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/KE;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/KE;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 47030
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/KP;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ADY()V
    .locals 3

    .line 47031
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KP;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A0B(Lcom/facebook/ads/redexgen/X/KE;)Lcom/facebook/ads/redexgen/X/VI;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/VH;->A0J:Lcom/facebook/ads/redexgen/X/VH;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VI;->A04(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;)V

    .line 47032
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KP;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A09(Lcom/facebook/ads/redexgen/X/KE;)Lcom/facebook/ads/redexgen/X/Mt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47033
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KP;->A00:Lcom/facebook/ads/redexgen/X/KE;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KP;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A09(Lcom/facebook/ads/redexgen/X/KE;)Lcom/facebook/ads/redexgen/X/Mt;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/85;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/85;->A0M()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->A0d(Lcom/facebook/ads/redexgen/X/KE;Ljava/lang/String;)V

    .line 47034
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KP;->A00:Lcom/facebook/ads/redexgen/X/KE;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->A0e(Lcom/facebook/ads/redexgen/X/KE;Z)V

    .line 47035
    return-void
.end method
