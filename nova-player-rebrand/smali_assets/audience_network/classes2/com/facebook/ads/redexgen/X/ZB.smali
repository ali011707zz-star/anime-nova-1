.class public final Lcom/facebook/ads/redexgen/X/ZB;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/ZC;->setAdDetails(Lcom/facebook/ads/redexgen/X/Nm;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VI;Lcom/facebook/ads/redexgen/X/Yh;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Nm;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/VI;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Yh;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/ZC;

.field public final synthetic A04:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ZC;Lcom/facebook/ads/redexgen/X/VI;Lcom/facebook/ads/redexgen/X/Yh;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Nm;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 74843
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZB;->A03:Lcom/facebook/ads/redexgen/X/ZC;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/ZB;->A01:Lcom/facebook/ads/redexgen/X/VI;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/ZB;->A02:Lcom/facebook/ads/redexgen/X/Yh;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/ZB;->A04:Ljava/lang/String;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/ZB;->A00:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 74844
    .local v0, "this":Lcom/facebook/ads/redexgen/X/ZB;
    .local p1, "v":Landroid/view/View;
    :try_start_0
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/ZB;->A01:Lcom/facebook/ads/redexgen/X/VI;

    sget-object v1, Lcom/facebook/ads/redexgen/X/VH;->A0A:Lcom/facebook/ads/redexgen/X/VH;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VI;->A04(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;)V

    .line 74845
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ZB;->A03:Lcom/facebook/ads/redexgen/X/ZC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZC;->A00(Lcom/facebook/ads/redexgen/X/ZC;)Lcom/facebook/ads/redexgen/X/Og;

    move-result-object v2

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ZB;->A03:Lcom/facebook/ads/redexgen/X/ZC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZC;->A01(Lcom/facebook/ads/redexgen/X/ZC;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Og;->A0O(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74846
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/ZB;->A02:Lcom/facebook/ads/redexgen/X/Yh;

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/ZB;->A04:Ljava/lang/String;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ZB;->A00:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->AAo(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Nm;)V

    goto :goto_0

    .line 74847
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/ZB;
    :cond_1
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ZB;->A00:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 74848
    new-instance v3, Lcom/facebook/ads/redexgen/X/X6;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/X6;-><init>()V

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ZB;->A03:Lcom/facebook/ads/redexgen/X/ZC;

    .line 74849
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZC;->A01(Lcom/facebook/ads/redexgen/X/ZC;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v2

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ZB;->A00:Lcom/facebook/ads/redexgen/X/Nm;

    .line 74850
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XB;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ZB;->A04:Ljava/lang/String;

    .line 74851
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X6;->A0O(Lcom/facebook/ads/redexgen/X/X6;Lcom/facebook/ads/redexgen/X/gi;Landroid/net/Uri;Ljava/lang/String;)Z

    .line 74852
    :cond_2
    :goto_0
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p1    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
