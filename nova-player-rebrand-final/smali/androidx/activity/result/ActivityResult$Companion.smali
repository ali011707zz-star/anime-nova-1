.class public final Landroidx/activity/result/ActivityResult$Companion;
.super Ljava/lang/Object;
.source "ActivityResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/result/ActivityResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/activity/result/ActivityResult$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final resultCodeToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    .line 70
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 69
    :cond_0
    const-string p1, "RESULT_CANCELED"

    return-object p1

    .line 68
    :cond_1
    const-string p1, "RESULT_OK"

    return-object p1
.end method
