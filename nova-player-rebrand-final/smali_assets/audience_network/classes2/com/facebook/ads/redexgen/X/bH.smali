.class public final Lcom/facebook/ads/redexgen/X/bH;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/LK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/LK;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2631
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "wQeUkUFktfM2l"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "7XaAWiHxEbalq5gcAes6NrqtmXxPT4Y3"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "2fv7kArIDvQtbqE5fFFu3pq8qRlQU6Cv"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "0xhN0xjEaMXvjGar1KVcE"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ki2D6rKULGHthGJNrJcFjvO3aJEOf9d"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "JHuN8xfhz8lLzrwSWaENIG05O1ASDFA"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "9Zp5ZsxK45djlTC7gbsQv9P1cFfLGY7l"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "GKuX8TC50ZMrYys0rib1"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/bH;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/LK;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 77639
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bH;->A00:Lcom/facebook/ads/redexgen/X/LK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 77640
    .local v0, "this":Lcom/facebook/ads/redexgen/X/bH;
    :try_start_0
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/bH;->A00:Lcom/facebook/ads/redexgen/X/LK;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bH;->A00:Lcom/facebook/ads/redexgen/X/LK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/LK;->A0T:Lcom/facebook/ads/redexgen/X/Na;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Na;->A04()I

    move-result v0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/LK;->A01:I

    .line 77641
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/bH;->A00:Lcom/facebook/ads/redexgen/X/LK;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bH;->A00:Lcom/facebook/ads/redexgen/X/LK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/LK;->A0T:Lcom/facebook/ads/redexgen/X/Na;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Na;->A04()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LK;->A0J(I)I

    move-result v0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/LK;->A03:I

    .line 77642
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bH;->A00:Lcom/facebook/ads/redexgen/X/LK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LK;->A0p()V

    .line 77643
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/bH;
    :catchall_0
    move-exception v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/bH;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/bH;->A01:[Ljava/lang/String;

    const-string v1, "KsmznMcBbJjrBrEeTGYdkeMkvFpYNuvy"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v3, v4}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
