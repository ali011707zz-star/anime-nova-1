.class public abstract Landroidx/activity/ImmLeaksCleaner$Cleaner;
.super Ljava/lang/Object;
.source "ImmLeaksCleaner.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/ImmLeaksCleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Cleaner"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/activity/ImmLeaksCleaner$Cleaner;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clearNextServedView(Landroid/view/inputmethod/InputMethodManager;)Z
.end method

.method public abstract getLock(Landroid/view/inputmethod/InputMethodManager;)Ljava/lang/Object;
.end method

.method public abstract getServedView(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;
.end method
