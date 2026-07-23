.class public final Landroidx/activity/result/ActivityResult$Companion$CREATOR$1;
.super Ljava/lang/Object;
.source "ActivityResult.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/result/ActivityResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/activity/result/ActivityResult;
    .locals 1

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    new-instance v0, Landroidx/activity/result/ActivityResult;

    invoke-direct {v0, p1}, Landroidx/activity/result/ActivityResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResult$Companion$CREATOR$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/activity/result/ActivityResult;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroidx/activity/result/ActivityResult;
    .locals 0

    .line 79
    new-array p1, p1, [Landroidx/activity/result/ActivityResult;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResult$Companion$CREATOR$1;->newArray(I)[Landroidx/activity/result/ActivityResult;

    move-result-object p1

    return-object p1
.end method
