.class final Lcom/github/salomonbrys/kotson/PropertiesKt$byNullableBigDecimal$4;
.super Lkotlin/jvm/internal/Lambda;
.source "Properties.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/salomonbrys/kotson/PropertiesKt;->byNullableBigDecimal(Lcom/google/gson/JsonElement;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lcom/github/salomonbrys/kotson/NullableJsonObjectDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/math/BigDecimal;",
        "Lcom/google/gson/JsonElement;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/google/gson/JsonElement;",
        "it",
        "Ljava/math/BigDecimal;",
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
.field public static final INSTANCE:Lcom/github/salomonbrys/kotson/PropertiesKt$byNullableBigDecimal$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/github/salomonbrys/kotson/PropertiesKt$byNullableBigDecimal$4;

    invoke-direct {v0}, Lcom/github/salomonbrys/kotson/PropertiesKt$byNullableBigDecimal$4;-><init>()V

    sput-object v0, Lcom/github/salomonbrys/kotson/PropertiesKt$byNullableBigDecimal$4;->INSTANCE:Lcom/github/salomonbrys/kotson/PropertiesKt$byNullableBigDecimal$4;

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
.method public final invoke(Ljava/math/BigDecimal;)Lcom/google/gson/JsonElement;
    .locals 0

    if-eqz p1, :cond_0

    .line 117
    invoke-static {p1}, Lcom/github/salomonbrys/kotson/BuilderKt;->toJson(Ljava/lang/Number;)Lcom/google/gson/JsonPrimitive;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    invoke-static {}, Lcom/github/salomonbrys/kotson/ElementKt;->getJsonNull()Lcom/google/gson/JsonNull;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Lcom/github/salomonbrys/kotson/PropertiesKt$byNullableBigDecimal$4;->invoke(Ljava/math/BigDecimal;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method
