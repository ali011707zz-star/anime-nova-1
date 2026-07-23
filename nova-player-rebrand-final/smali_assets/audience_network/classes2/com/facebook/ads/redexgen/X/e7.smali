.class public final Lcom/facebook/ads/redexgen/X/e7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/e8;->setUpVideo(Lcom/facebook/ads/redexgen/X/gi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/e8;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2740
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "hS5f9KbstsMPLbUbPSxFVdCfAROmcRtV"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "DUM08yoPCPer4HETov37xY8lXqOkWet1"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "HD0hLshA4"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "cNo3fMkBKvz7jHUo"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "0KN3KUldF"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ICLtCAijF"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "iMQeuY1uIySJVoFID8xkudblEyJz6Aif"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "P1hZJiyY"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/e7;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/e8;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 80654
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/e7;->A00:Lcom/facebook/ads/redexgen/X/e8;

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
    move-object v1, p0

    .line 80655
    .local v0, "this":Lcom/facebook/ads/redexgen/X/e7;
    .local p0, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/e7;->A00:Lcom/facebook/ads/redexgen/X/e8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/e8;->A00(Lcom/facebook/ads/redexgen/X/e8;)Lcom/facebook/ads/redexgen/X/34;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/34;->performClick()Z

    .line 80656
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/e7;
    .end local p0    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/e7;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4e

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/e7;->A01:[Ljava/lang/String;

    const-string v1, "I2wlNoUiFEETsNdyZ3cedgIbWPjbODtt"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "f6nspZJA1kETXV8rRnTaX6zeidOCX4th"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
