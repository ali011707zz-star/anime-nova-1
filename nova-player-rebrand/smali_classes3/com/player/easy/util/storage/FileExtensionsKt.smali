.class public final Lcom/player/easy/util/storage/FileExtensionsKt;
.super Ljava/lang/Object;
.source "FileExtensions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "getUriCompat",
        "Landroid/net/Uri;",
        "Ljava/io/File;",
        "context",
        "Landroid/content/Context;",
        "app_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFileExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileExtensions.kt\ncom/player/easy/util/storage/FileExtensionsKt\n+ 2 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,23:1\n36#2:24\n*S KotlinDebug\n*F\n+ 1 FileExtensions.kt\ncom/player/easy/util/storage/FileExtensionsKt\n*L\n20#1:24\n*E\n"
    }
.end annotation


# direct methods
.method public static final getUriCompat(Ljava/io/File;Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 18
    const-string v0, "com.player.easy.provider"

    invoke-static {p1, v0, p0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    .line 17
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0

    .line 24
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
