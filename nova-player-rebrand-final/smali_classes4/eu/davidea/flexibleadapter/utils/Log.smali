.class public abstract Leu/davidea/flexibleadapter/utils/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static LEVEL:I = 0xa

.field public static customTag:Ljava/lang/String;

.field private static withLineNumber:Z

.field private static withMethodName:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private static createLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 274
    sget-boolean v0, Leu/davidea/flexibleadapter/utils/Log;->withMethodName:Z

    if-eqz v0, :cond_1

    .line 275
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 276
    sget-boolean v2, Leu/davidea/flexibleadapter/utils/Log;->withLineNumber:Z

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    .line 277
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v5

    aput-object v0, v1, v4

    aput-object p0, v1, v3

    const-string p0, "[%s:%s] %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 279
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v5

    aput-object p0, v1, v4

    const-string p0, "[%s] %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 137
    invoke-static {}, Leu/davidea/flexibleadapter/utils/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-static {}, Leu/davidea/flexibleadapter/utils/Log;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Leu/davidea/flexibleadapter/utils/Log;->formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 199
    invoke-static {}, Leu/davidea/flexibleadapter/utils/Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-static {}, Leu/davidea/flexibleadapter/utils/Log;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Leu/davidea/flexibleadapter/utils/Log;->formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static varargs formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 270
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Leu/davidea/flexibleadapter/utils/Log;->createLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getTag()Ljava/lang/String;
    .locals 2

    .line 255
    sget-object v0, Leu/davidea/flexibleadapter/utils/Log;->customTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 258
    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 259
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 261
    const-string v0, "SourceFile"

    return-object v0

    .line 263
    :cond_1
    const-string v1, "[.]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 149
    invoke-static {}, Leu/davidea/flexibleadapter/utils/Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-static {}, Leu/davidea/flexibleadapter/utils/Log;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Leu/davidea/flexibleadapter/utils/Log;->formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static isDebugEnabled()Z
    .locals 2

    .line 103
    sget v0, Leu/davidea/flexibleadapter/utils/Log;->LEVEL:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isErrorEnabled()Z
    .locals 2

    .line 115
    sget v0, Leu/davidea/flexibleadapter/utils/Log;->LEVEL:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isInfoEnabled()Z
    .locals 2

    .line 107
    sget v0, Leu/davidea/flexibleadapter/utils/Log;->LEVEL:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isVerboseEnabled()Z
    .locals 2

    .line 99
    sget v0, Leu/davidea/flexibleadapter/utils/Log;->LEVEL:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isWarnEnabled()Z
    .locals 2

    .line 111
    sget v0, Leu/davidea/flexibleadapter/utils/Log;->LEVEL:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static setLevel(I)V
    .locals 0

    .line 81
    sput p0, Leu/davidea/flexibleadapter/utils/Log;->LEVEL:I

    return-void
.end method

.method public static useTag(Ljava/lang/String;)V
    .locals 0

    .line 251
    sput-object p0, Leu/davidea/flexibleadapter/utils/Log;->customTag:Ljava/lang/String;

    return-void
.end method

.method public static varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 125
    invoke-static {}, Leu/davidea/flexibleadapter/utils/Log;->isVerboseEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-static {}, Leu/davidea/flexibleadapter/utils/Log;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Leu/davidea/flexibleadapter/utils/Log;->formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 174
    invoke-static {}, Leu/davidea/flexibleadapter/utils/Log;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-static {}, Leu/davidea/flexibleadapter/utils/Log;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Leu/davidea/flexibleadapter/utils/Log;->formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static varargs wtf(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 224
    invoke-static {}, Leu/davidea/flexibleadapter/utils/Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-static {}, Leu/davidea/flexibleadapter/utils/Log;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Leu/davidea/flexibleadapter/utils/Log;->formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static varargs wtf(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 238
    invoke-static {}, Leu/davidea/flexibleadapter/utils/Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-static {}, Leu/davidea/flexibleadapter/utils/Log;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Leu/davidea/flexibleadapter/utils/Log;->formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
