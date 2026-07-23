.class final Lcom/github/salomonbrys/kotson/ElementKt$nullObj$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Element.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/salomonbrys/kotson/ElementKt;->getNullObj(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/google/gson/JsonElement;",
        "Lcom/google/gson/JsonObject;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lcom/google/gson/JsonObject;",
        "Lcom/google/gson/JsonElement;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/github/salomonbrys/kotson/ElementKt$nullObj$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/github/salomonbrys/kotson/ElementKt$nullObj$1;

    invoke-direct {v0}, Lcom/github/salomonbrys/kotson/ElementKt$nullObj$1;-><init>()V

    sput-object v0, Lcom/github/salomonbrys/kotson/ElementKt$nullObj$1;->INSTANCE:Lcom/github/salomonbrys/kotson/ElementKt$nullObj$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonObject;
    .locals 1

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-static {p1}, Lcom/github/salomonbrys/kotson/ElementKt;->getObj(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonObject;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lcom/google/gson/JsonElement;

    invoke-virtual {p0, p1}, Lcom/github/salomonbrys/kotson/ElementKt$nullObj$1;->invoke(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonObject;

    move-result-object p1

    return-object p1
.end method
