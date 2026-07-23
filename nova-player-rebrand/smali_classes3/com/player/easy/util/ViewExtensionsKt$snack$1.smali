.class public final Lcom/player/easy/util/ViewExtensionsKt$snack$1;
.super Ljava/lang/Object;
.source "ViewExtensions.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/player/easy/util/ViewExtensionsKt;->snack$default(Landroid/view/View;Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/google/android/material/snackbar/Snackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/google/android/material/snackbar/Snackbar;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0xb0
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nViewExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewExtensions.kt\ncom/player/easy/util/ViewExtensionsKt$snack$1\n*L\n1#1,95:1\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/player/easy/util/ViewExtensionsKt$snack$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/player/easy/util/ViewExtensionsKt$snack$1;

    invoke-direct {v0}, Lcom/player/easy/util/ViewExtensionsKt$snack$1;-><init>()V

    sput-object v0, Lcom/player/easy/util/ViewExtensionsKt$snack$1;->INSTANCE:Lcom/player/easy/util/ViewExtensionsKt$snack$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 88
    check-cast p1, Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p0, p1}, Lcom/player/easy/util/ViewExtensionsKt$snack$1;->invoke(Lcom/google/android/material/snackbar/Snackbar;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/google/android/material/snackbar/Snackbar;)V
    .locals 1

    .line 0
    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
