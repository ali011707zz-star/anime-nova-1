.class final Lcom/github/salomonbrys/kotson/GsonBuilderKt$registerTypeHierarchyAdapterBuilder$1;
.super Lkotlin/jvm/internal/Lambda;
.source "GsonBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/salomonbrys/kotson/GsonBuilderKt;->registerTypeHierarchyAdapterBuilder(Lcom/google/gson/GsonBuilder;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;)Lcom/google/gson/GsonBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Object;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x0
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "",
        "it",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $type:Ljava/lang/Class;

.field final synthetic receiver$0:Lcom/google/gson/GsonBuilder;


# direct methods
.method constructor <init>(Lcom/google/gson/GsonBuilder;Ljava/lang/Class;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/github/salomonbrys/kotson/GsonBuilderKt$registerTypeHierarchyAdapterBuilder$1;->receiver$0:Lcom/google/gson/GsonBuilder;

    iput-object p2, p0, Lcom/github/salomonbrys/kotson/GsonBuilderKt$registerTypeHierarchyAdapterBuilder$1;->$type:Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/github/salomonbrys/kotson/GsonBuilderKt$registerTypeHierarchyAdapterBuilder$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/github/salomonbrys/kotson/GsonBuilderKt$registerTypeHierarchyAdapterBuilder$1;->receiver$0:Lcom/google/gson/GsonBuilder;

    iget-object v1, p0, Lcom/github/salomonbrys/kotson/GsonBuilderKt$registerTypeHierarchyAdapterBuilder$1;->$type:Ljava/lang/Class;

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/GsonBuilder;->registerTypeHierarchyAdapter(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    return-void
.end method
