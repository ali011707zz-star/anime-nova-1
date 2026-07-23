.class public final Lcoil/size/OriginalSize;
.super Lcoil/size/Size;
.source "Size.kt"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcoil/size/OriginalSize;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lcoil/size/OriginalSize;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcoil/size/OriginalSize;

    invoke-direct {v0}, Lcoil/size/OriginalSize;-><init>()V

    sput-object v0, Lcoil/size/OriginalSize;->INSTANCE:Lcoil/size/OriginalSize;

    new-instance v0, Lcoil/size/OriginalSize$Creator;

    invoke-direct {v0}, Lcoil/size/OriginalSize$Creator;-><init>()V

    sput-object v0, Lcoil/size/OriginalSize;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, v0}, Lcoil/size/Size;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 19
    const-string v0, "coil.size.OriginalSize"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 0
    const-string p2, "out"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
