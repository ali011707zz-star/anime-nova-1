.class final Lcom/github/salomonbrys/kotson/PropertiesKt$byChar$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Properties.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/salomonbrys/kotson/PropertiesKt;->getByChar(Lcom/google/gson/JsonElement;)Lcom/github/salomonbrys/kotson/JsonObjectDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Character;",
        "Lcom/google/gson/JsonPrimitive;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000c\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/google/gson/JsonPrimitive;",
        "it",
        "",
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
.field public static final INSTANCE:Lcom/github/salomonbrys/kotson/PropertiesKt$byChar$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/github/salomonbrys/kotson/PropertiesKt$byChar$2;

    invoke-direct {v0}, Lcom/github/salomonbrys/kotson/PropertiesKt$byChar$2;-><init>()V

    sput-object v0, Lcom/github/salomonbrys/kotson/PropertiesKt$byChar$2;->INSTANCE:Lcom/github/salomonbrys/kotson/PropertiesKt$byChar$2;

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
.method public final invoke(C)Lcom/google/gson/JsonPrimitive;
    .locals 0

    .line 64
    invoke-static {p1}, Lcom/github/salomonbrys/kotson/BuilderKt;->toJson(C)Lcom/google/gson/JsonPrimitive;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/salomonbrys/kotson/PropertiesKt$byChar$2;->invoke(C)Lcom/google/gson/JsonPrimitive;

    move-result-object p1

    return-object p1
.end method
