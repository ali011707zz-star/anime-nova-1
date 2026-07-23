.class public abstract Lcom/facebook/ads/redexgen/X/hd;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Z

.field public static final A01:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/debug/log/BLogLevelCallback;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile A02:Lcom/facebook/ads/redexgen/X/hW;

.field public static volatile A03:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 2927
    invoke-static {}, Lcom/facebook/ads/redexgen/X/2T;->A00()Lcom/facebook/ads/redexgen/X/2T;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/hd;->A02:Lcom/facebook/ads/redexgen/X/hW;

    .line 2928
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/hd;->A03:Z

    .line 2929
    sput-boolean v0, Lcom/facebook/ads/redexgen/X/hd;->A00:Z

    .line 2930
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/hd;->A01:Ljava/util/List;

    .line 2931
    sget-object v1, Lcom/facebook/ads/redexgen/X/hd;->A02:Lcom/facebook/ads/redexgen/X/hW;

    const/4 v0, 0x5

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/hW;->AJY(I)V

    .line 2932
    sget-object v0, Lcom/facebook/ads/redexgen/X/hd;->A02:Lcom/facebook/ads/redexgen/X/hW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/hV;->A00(Lcom/facebook/ads/redexgen/X/hW;)V

    .line 2933
    return-void
.end method

.method public static A00(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 85021
    sget-object v1, Lcom/facebook/ads/redexgen/X/hd;->A02:Lcom/facebook/ads/redexgen/X/hW;

    const/4 v0, 0x4

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/hW;->AAY(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85022
    sget-object v0, Lcom/facebook/ads/redexgen/X/hd;->A02:Lcom/facebook/ads/redexgen/X/hW;

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/hW;->A9t(Ljava/lang/String;Ljava/lang/String;)V

    .line 85023
    :cond_0
    return-void
.end method

.method public static A01(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 85024
    sget-object v1, Lcom/facebook/ads/redexgen/X/hd;->A02:Lcom/facebook/ads/redexgen/X/hW;

    const/4 v0, 0x4

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/hW;->AAY(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85025
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/hY;->A0J(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/hd;->A00(Ljava/lang/String;Ljava/lang/String;)V

    .line 85026
    :cond_0
    return-void
.end method

.method public static A02(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 85027
    sget-object v1, Lcom/facebook/ads/redexgen/X/hd;->A02:Lcom/facebook/ads/redexgen/X/hW;

    const/4 v0, 0x4

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/hW;->AAY(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85028
    sget-object v0, Lcom/facebook/ads/redexgen/X/hd;->A02:Lcom/facebook/ads/redexgen/X/hW;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/hW;->A9u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85029
    :cond_0
    return-void
.end method
