.class public final Landroidx/fragment/app/DefaultSpecialEffectsController$Api24Impl;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/DefaultSpecialEffectsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api24Impl"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/fragment/app/DefaultSpecialEffectsController$Api24Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/fragment/app/DefaultSpecialEffectsController$Api24Impl;

    invoke-direct {v0}, Landroidx/fragment/app/DefaultSpecialEffectsController$Api24Impl;-><init>()V

    sput-object v0, Landroidx/fragment/app/DefaultSpecialEffectsController$Api24Impl;->INSTANCE:Landroidx/fragment/app/DefaultSpecialEffectsController$Api24Impl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final totalDuration(Landroid/animation/AnimatorSet;)J
    .locals 2

    const-string v0, "animatorSet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1159
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    return-wide v0
.end method
