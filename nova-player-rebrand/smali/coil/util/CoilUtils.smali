.class public final Lcoil/util/CoilUtils;
.super Ljava/lang/Object;
.source "CoilUtils.kt"


# static fields
.field public static final INSTANCE:Lcoil/util/CoilUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcoil/util/CoilUtils;

    invoke-direct {v0}, Lcoil/util/CoilUtils;-><init>()V

    sput-object v0, Lcoil/util/CoilUtils;->INSTANCE:Lcoil/util/CoilUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final clear(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-static {p0}, Lcoil/util/-Extensions;->getRequestManager(Landroid/view/View;)Lcoil/memory/ViewTargetRequestManager;

    move-result-object p0

    invoke-virtual {p0}, Lcoil/memory/ViewTargetRequestManager;->clearCurrentRequest()V

    return-void
.end method

.method public static final createDefaultCache(Landroid/content/Context;)Lokhttp3/Cache;
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lcoil/util/Utils;->INSTANCE:Lcoil/util/Utils;

    invoke-virtual {v0, p0}, Lcoil/util/Utils;->getDefaultCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 16
    invoke-virtual {v0, p0}, Lcoil/util/Utils;->calculateDiskCacheSize(Ljava/io/File;)J

    move-result-wide v0

    .line 17
    new-instance v2, Lokhttp3/Cache;

    invoke-direct {v2, p0, v0, v1}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    return-object v2
.end method
