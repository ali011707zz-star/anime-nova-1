.class abstract Lcom/google/common/base/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Platform$JdkPatternCompiler;
    }
.end annotation


# static fields
.field private static final patternCompiler:Lcom/google/common/base/PatternCompiler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    invoke-static {}, Lcom/google/common/base/Platform;->loadPatternCompiler()Lcom/google/common/base/PatternCompiler;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/Platform;->patternCompiler:Lcom/google/common/base/PatternCompiler;

    return-void
.end method

.method static emptyToNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 80
    invoke-static {p0}, Lcom/google/common/base/Platform;->stringIsNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method private static loadPatternCompiler()Lcom/google/common/base/PatternCompiler;
    .locals 2

    .line 98
    new-instance v0, Lcom/google/common/base/Platform$JdkPatternCompiler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/base/Platform$JdkPatternCompiler;-><init>(Lcom/google/common/base/Platform$1;)V

    return-object v0
.end method

.method static nullToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    .line 69
    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method static stringIsNullOrEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 59
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
