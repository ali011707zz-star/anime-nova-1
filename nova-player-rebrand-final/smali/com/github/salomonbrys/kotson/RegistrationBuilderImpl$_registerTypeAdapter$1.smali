.class final Lcom/github/salomonbrys/kotson/RegistrationBuilderImpl$_registerTypeAdapter$1;
.super Lkotlin/jvm/internal/Lambda;
.source "GsonBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/salomonbrys/kotson/RegistrationBuilderImpl;->_registerTypeAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/github/salomonbrys/kotson/TypeAdapterBuilder<",
        "TT;TT;>;",
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
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "",
        "Lcom/github/salomonbrys/kotson/TypeAdapterBuilder;",
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
.field final synthetic $readFunction:Lkotlin/jvm/functions/Function1;

.field final synthetic $writeFunction:Lkotlin/jvm/functions/Function2;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/github/salomonbrys/kotson/RegistrationBuilderImpl$_registerTypeAdapter$1;->$readFunction:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/github/salomonbrys/kotson/RegistrationBuilderImpl$_registerTypeAdapter$1;->$writeFunction:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 152
    check-cast p1, Lcom/github/salomonbrys/kotson/TypeAdapterBuilder;

    invoke-virtual {p0, p1}, Lcom/github/salomonbrys/kotson/RegistrationBuilderImpl$_registerTypeAdapter$1;->invoke(Lcom/github/salomonbrys/kotson/TypeAdapterBuilder;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/github/salomonbrys/kotson/TypeAdapterBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kotson/TypeAdapterBuilder<",
            "TT;TT;>;)V"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/github/salomonbrys/kotson/RegistrationBuilderImpl$_registerTypeAdapter$1;->$readFunction:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, v0}, Lcom/github/salomonbrys/kotson/TypeAdapterBuilder;->read(Lkotlin/jvm/functions/Function1;)V

    iget-object v0, p0, Lcom/github/salomonbrys/kotson/RegistrationBuilderImpl$_registerTypeAdapter$1;->$writeFunction:Lkotlin/jvm/functions/Function2;

    invoke-interface {p1, v0}, Lcom/github/salomonbrys/kotson/TypeAdapterBuilder;->write(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
