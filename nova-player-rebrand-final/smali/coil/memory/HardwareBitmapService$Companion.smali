.class public final Lcoil/memory/HardwareBitmapService$Companion;
.super Ljava/lang/Object;
.source "HardwareBitmapService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/memory/HardwareBitmapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcoil/memory/HardwareBitmapService$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Lcoil/memory/HardwareBitmapService;
    .locals 3

    .line 20
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3

    sget-boolean v2, Lcoil/memory/HardwareBitmapBlocklist;->IS_BLOCKED:Z

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    if-eq v0, v1, :cond_2

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 22
    :cond_1
    new-instance v0, Lcoil/memory/ImmutableHardwareBitmapService;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcoil/memory/ImmutableHardwareBitmapService;-><init>(Z)V

    return-object v0

    .line 21
    :cond_2
    :goto_0
    sget-object v0, Lcoil/memory/LimitedFileDescriptorHardwareBitmapService;->INSTANCE:Lcoil/memory/LimitedFileDescriptorHardwareBitmapService;

    return-object v0

    .line 20
    :cond_3
    :goto_1
    new-instance v0, Lcoil/memory/ImmutableHardwareBitmapService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/memory/ImmutableHardwareBitmapService;-><init>(Z)V

    return-object v0
.end method
