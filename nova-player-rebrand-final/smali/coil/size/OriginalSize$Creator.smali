.class public final Lcoil/size/OriginalSize$Creator;
.super Ljava/lang/Object;
.source "Size.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/size/OriginalSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcoil/size/OriginalSize;
    .locals 1

    .line 0
    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    sget-object p1, Lcoil/size/OriginalSize;->INSTANCE:Lcoil/size/OriginalSize;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcoil/size/OriginalSize$Creator;->createFromParcel(Landroid/os/Parcel;)Lcoil/size/OriginalSize;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcoil/size/OriginalSize;
    .locals 0

    .line 0
    new-array p1, p1, [Lcoil/size/OriginalSize;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcoil/size/OriginalSize$Creator;->newArray(I)[Lcoil/size/OriginalSize;

    move-result-object p1

    return-object p1
.end method
