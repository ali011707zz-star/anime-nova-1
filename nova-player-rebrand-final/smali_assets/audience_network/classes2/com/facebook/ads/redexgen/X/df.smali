.class public final Lcom/facebook/ads/redexgen/X/df;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/55;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/55;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2719
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "fzjyGYuq3piyXiDZRjFkW67NOQ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "BBiqyoJQ78KnhCEDEb2JbAozax"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "1KByreOTKkBHOeAHWLPqFTrN6QP2TzEC"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "MP4Zvm8LfRa"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "DgL9liz0G6FW"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "NXDVupkXAhI36dZ8X7NCFVcgk2Bhw4pc"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "8y8TgWmK0Yc5iAE5REQxk164k6eqV1M2"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "0ZHlEJC1wd2fv29SneAo5e4vf7D"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/df;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/55;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 80266
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/df;->A00:Lcom/facebook/ads/redexgen/X/55;

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

    .line 80267
    .local v0, "this":Lcom/facebook/ads/redexgen/X/df;
    :try_start_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/df;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/55;->A0y(Lcom/facebook/ads/redexgen/X/55;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80268
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/df;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/55;->A0e(Lcom/facebook/ads/redexgen/X/55;)V

    .line 80269
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/df;
    :cond_1
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/df;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/df;->A01:[Ljava/lang/String;

    const-string v1, "zshW7x6N5qX8w7YdYsjxjIdxV"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {v3, v4}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
