.class public final Lcom/facebook/ads/redexgen/X/Zu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Zv;->A03()Lcom/facebook/ads/redexgen/X/a1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A03:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ok;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Zh;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Zv;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2588
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "qTn7FHoQ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "BapBypyKyXgi02nUaikHNoU7eY2sLlHG"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "hAbogJy7"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "1kKCdLvWKNxoPSiH"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Xjk6qTkQoY8vuVUP"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "RHy2P55wnjv0LaFNgRpD8dXF"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "4s2GzZI6q8xqZAbl0Skgz3P6Lr2GKXBU"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "B9Ul8cdGX1dUct8fF9ORVNarLvr0UfHM"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Zu;->A03:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Zv;Lcom/facebook/ads/redexgen/X/Zh;Lcom/facebook/ads/redexgen/X/Ok;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 75971
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zu;->A02:Lcom/facebook/ads/redexgen/X/Zv;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Zu;->A01:Lcom/facebook/ads/redexgen/X/Zh;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Zu;->A00:Lcom/facebook/ads/redexgen/X/Ok;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v2, p0

    .line 75972
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Zu;
    .local p1, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Zu;->A01:Lcom/facebook/ads/redexgen/X/Zh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zh;->A01()V

    .line 75973
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Zu;->A02:Lcom/facebook/ads/redexgen/X/Zv;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zv;->A02(Lcom/facebook/ads/redexgen/X/Zv;)Lcom/facebook/ads/redexgen/X/Zf;

    move-result-object v1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Zu;->A00:Lcom/facebook/ads/redexgen/X/Ok;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Zf;->AF4(Lcom/facebook/ads/redexgen/X/Ok;)V

    .line 75974
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/Zu;
    .end local p1    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Zu;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Zu;->A03:[Ljava/lang/String;

    const-string v1, "Wxfvm9MNAlg6MGh9"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "9MWDJcBk5PnwUytH"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-void
.end method
