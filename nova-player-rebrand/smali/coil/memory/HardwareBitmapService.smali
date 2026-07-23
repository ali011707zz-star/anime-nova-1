.class public abstract Lcoil/memory/HardwareBitmapService;
.super Ljava/lang/Object;
.source "HardwareBitmapService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/memory/HardwareBitmapService$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcoil/memory/HardwareBitmapService$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lcoil/memory/HardwareBitmapService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/memory/HardwareBitmapService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcoil/memory/HardwareBitmapService;->Companion:Lcoil/memory/HardwareBitmapService$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcoil/memory/HardwareBitmapService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract allowHardware(Lcoil/size/Size;Lcoil/util/Logger;)Z
.end method
