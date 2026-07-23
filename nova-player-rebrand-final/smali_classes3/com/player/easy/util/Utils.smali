.class public final Lcom/player/easy/util/Utils;
.super Ljava/lang/Object;
.source "Utils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u0016\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u000cJ\u0010\u0010\r\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0010J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0007J\u0016\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0005J\"\u0010\u0015\u001a\u00020\u00052\n\u0010\u0016\u001a\u00060\u0017j\u0002`\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\tR\u000e\u0010\u0014\u001a\u00020\tX\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/player/easy/util/Utils;",
        "",
        "<init>",
        "()V",
        "getSize",
        "",
        "context",
        "Landroid/content/Context;",
        "size",
        "",
        "getFileSize",
        "url",
        "Ljava/net/URL;",
        "getNameFromUrl",
        "floatForm",
        "d",
        "",
        "getDestinationUri",
        "Landroid/net/Uri;",
        "filename",
        "TIME_UNSET",
        "getStringForTime",
        "builder",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "formatter",
        "Ljava/util/Formatter;",
        "timeMs",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\ncom/player/easy/util/Utils\n+ 2 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,118:1\n36#2:119\n*S KotlinDebug\n*F\n+ 1 Utils.kt\ncom/player/easy/util/Utils\n*L\n84#1:119\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/player/easy/util/Utils;

.field public static final TIME_UNSET:J = -0x7fffffffffffffffL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/player/easy/util/Utils;

    invoke-direct {v0}, Lcom/player/easy/util/Utils;-><init>()V

    sput-object v0, Lcom/player/easy/util/Utils;->INSTANCE:Lcom/player/easy/util/Utils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final floatForm(F)Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "format(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getDestinationUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filename"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 119
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public final getFileSize(Landroid/content/Context;Ljava/net/URL;)Ljava/lang/String;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 38
    :try_start_0
    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 39
    instance-of p2, v0, Ljava/net/HttpURLConnection;

    if-eqz p2, :cond_0

    .line 40
    move-object p2, v0

    check-cast p2, Ljava/net/HttpURLConnection;

    const-string v1, "HEAD"

    invoke-virtual {p2, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 42
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 43
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {p0, p1, v1, v2}, Lcom/player/easy/util/Utils;->getSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    instance-of p2, v0, Ljava/net/HttpURLConnection;

    if-eqz p2, :cond_1

    .line 48
    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-object p1

    .line 45
    :catch_0
    :try_start_1
    const-string p1, "?"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    instance-of p2, v0, Ljava/net/HttpURLConnection;

    if-eqz p2, :cond_2

    .line 48
    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    return-object p1

    .line 47
    :goto_1
    instance-of p2, v0, Ljava/net/HttpURLConnection;

    if-eqz p2, :cond_3

    .line 48
    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw p1
.end method

.method public final getNameFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getSize(JLandroid/content/Context;)Ljava/lang/String;
    .locals 9

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x400

    int-to-float v0, v0

    const/high16 v1, 0x44800000    # 1024.0f

    mul-float v2, v0, v1

    mul-float v3, v2, v0

    mul-float v4, v3, v0

    mul-float v5, v4, v0

    mul-float/2addr v0, v5

    long-to-float v6, p1

    cmpg-float v7, v6, v1

    const-string v8, " "

    if-gez v7, :cond_0

    .line 68
    sget v0, Lcom/player/easy/R$string;->size_b:I

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    cmpl-float p1, v6, v1

    if-ltz p1, :cond_1

    cmpg-float p1, v6, v2

    if-gez p1, :cond_1

    div-float/2addr v6, v1

    .line 70
    invoke-virtual {p0, v6}, Lcom/player/easy/util/Utils;->floatForm(F)Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/player/easy/R$string;->size_kb:I

    invoke-virtual {p3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    cmpl-float p1, v6, v2

    if-ltz p1, :cond_2

    cmpg-float p1, v6, v3

    if-gez p1, :cond_2

    div-float/2addr v6, v2

    .line 72
    invoke-virtual {p0, v6}, Lcom/player/easy/util/Utils;->floatForm(F)Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/player/easy/R$string;->size_mb:I

    invoke-virtual {p3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    cmpl-float p1, v6, v3

    if-ltz p1, :cond_3

    cmpg-float p1, v6, v4

    if-gez p1, :cond_3

    div-float/2addr v6, v3

    .line 74
    invoke-virtual {p0, v6}, Lcom/player/easy/util/Utils;->floatForm(F)Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/player/easy/R$string;->size_gb:I

    invoke-virtual {p3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    cmpl-float p1, v6, v4

    if-ltz p1, :cond_4

    cmpg-float p1, v6, v5

    if-gez p1, :cond_4

    div-float/2addr v6, v4

    .line 76
    invoke-virtual {p0, v6}, Lcom/player/easy/util/Utils;->floatForm(F)Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/player/easy/R$string;->size_tb:I

    invoke-virtual {p3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    cmpl-float p1, v6, v5

    if-ltz p1, :cond_5

    cmpg-float p1, v6, v0

    if-gez p1, :cond_5

    div-float/2addr v6, v5

    .line 78
    invoke-virtual {p0, v6}, Lcom/player/easy/util/Utils;->floatForm(F)Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/player/easy/R$string;->size_pb:I

    invoke-virtual {p3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    cmpl-float p1, v6, v0

    if-ltz p1, :cond_6

    div-float/2addr v6, v0

    .line 79
    invoke-virtual {p0, v6}, Lcom/player/easy/util/Utils;->floatForm(F)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " EB"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    const-string p1, "???"

    return-object p1
.end method

.method public final getSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x400

    int-to-float v0, v0

    const/high16 v1, 0x44800000    # 1024.0f

    mul-float v2, v0, v1

    mul-float v3, v2, v0

    mul-float v4, v3, v0

    mul-float v5, v4, v0

    mul-float/2addr v0, v5

    long-to-float v6, p2

    cmpg-float v7, v6, v1

    const-string v8, " "

    if-gez v7, :cond_0

    .line 26
    sget v0, Lcom/player/easy/R$string;->b:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    cmpl-float p2, v6, v1

    if-ltz p2, :cond_1

    cmpg-float p2, v6, v2

    if-gez p2, :cond_1

    div-float/2addr v6, v1

    .line 27
    invoke-virtual {p0, v6}, Lcom/player/easy/util/Utils;->floatForm(F)Ljava/lang/String;

    move-result-object p2

    sget p3, Lcom/player/easy/R$string;->kb:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    cmpl-float p2, v6, v2

    if-ltz p2, :cond_2

    cmpg-float p2, v6, v3

    if-gez p2, :cond_2

    div-float/2addr v6, v2

    .line 28
    invoke-virtual {p0, v6}, Lcom/player/easy/util/Utils;->floatForm(F)Ljava/lang/String;

    move-result-object p2

    sget p3, Lcom/player/easy/R$string;->mg:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    cmpl-float p2, v6, v3

    if-ltz p2, :cond_3

    cmpg-float p2, v6, v4

    if-gez p2, :cond_3

    div-float/2addr v6, v3

    .line 29
    invoke-virtual {p0, v6}, Lcom/player/easy/util/Utils;->floatForm(F)Ljava/lang/String;

    move-result-object p2

    sget p3, Lcom/player/easy/R$string;->gb:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    cmpl-float p1, v6, v4

    if-ltz p1, :cond_4

    cmpg-float p1, v6, v5

    if-gez p1, :cond_4

    div-float/2addr v6, v4

    .line 30
    invoke-virtual {p0, v6}, Lcom/player/easy/util/Utils;->floatForm(F)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " TB"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    cmpl-float p1, v6, v5

    if-ltz p1, :cond_5

    cmpg-float p1, v6, v0

    if-gez p1, :cond_5

    div-float/2addr v6, v5

    .line 31
    invoke-virtual {p0, v6}, Lcom/player/easy/util/Utils;->floatForm(F)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " PB"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    cmpl-float p1, v6, v0

    if-ltz p1, :cond_6

    div-float/2addr v6, v0

    .line 32
    invoke-virtual {p0, v6}, Lcom/player/easy/util/Utils;->floatForm(F)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " EB"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    const-string p1, "???"

    return-object p1
.end method

.method public final getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;
    .locals 10

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formatter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p3, v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    move-wide p3, v1

    :cond_0
    cmp-long v0, p3, v1

    if-gez v0, :cond_1

    .line 106
    const-string v0, "-"

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 107
    :goto_0
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(J)J

    move-result-wide p3

    const/16 v3, 0x1f4

    int-to-long v3, v3

    add-long/2addr p3, v3

    const/16 v3, 0x3e8

    int-to-long v3, v3

    .line 108
    div-long/2addr p3, v3

    const/16 v3, 0x3c

    int-to-long v3, v3

    .line 109
    rem-long v5, p3, v3

    .line 110
    div-long v7, p3, v3

    rem-long/2addr v7, v3

    const/16 v3, 0xe10

    int-to-long v3, v3

    .line 111
    div-long/2addr p3, v3

    const/4 v3, 0x0

    .line 112
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    cmp-long p1, p3, v1

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x1

    const-string v9, "toString(...)"

    if-lez p1, :cond_2

    .line 114
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v3

    aput-object p1, v5, v4

    aput-object p3, v5, v2

    aput-object p4, v5, v1

    const-string p1, "%s%d:%02d:%02d"

    invoke-virtual {p2, p1, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 115
    :cond_2
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    new-array p4, v1, [Ljava/lang/Object;

    aput-object v0, p4, v3

    aput-object p1, p4, v4

    aput-object p3, p4, v2

    const-string p1, "%s%02d:%02d"

    invoke-virtual {p2, p1, p4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
