.class public final Lcom/facebook/ads/redexgen/X/in;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0014\u0010\u000c\u001a\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000bJ\u0006\u0010\u000f\u001a\u00020\u0005R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\t\u001a\u0004\u0008\u0004\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/facebook/video/heroplayer/exocustom/GlobalSystemVolumeHolder;",
        "",
        "<init>",
        "()V",
        "isSystemVolumeMuted",
        "",
        "()Ljava/lang/Boolean;",
        "setSystemVolumeMuted",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "headsetStatusFn",
        "Lkotlin/Function0;",
        "setHeadsetStatusFn",
        "",
        "statusFn",
        "isHeadsetConnected",
        "fbandroid.java.com.facebook.video.heroplayer.exocustom.exocustom"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static A00:Lcom/facebook/ads/redexgen/X/Aa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Aa<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final A01:Lcom/facebook/ads/redexgen/X/in;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/ads/redexgen/X/in;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/in;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/in;->A01:Lcom/facebook/ads/redexgen/X/in;

    .line 2953
    sget-object v0, Lcom/facebook/ads/redexgen/X/1D;->A00:Lcom/facebook/ads/redexgen/X/1D;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Aa;

    sput-object v0, Lcom/facebook/ads/redexgen/X/in;->A00:Lcom/facebook/ads/redexgen/X/Aa;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 87396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized A00()Z
    .locals 1

    monitor-enter p0

    .line 87397
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/in;->A00:Lcom/facebook/ads/redexgen/X/Aa;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Aa;->AAJ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/in;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
