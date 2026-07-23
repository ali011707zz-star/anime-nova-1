.class public interface abstract Lcoil/size/SizeResolver;
.super Ljava/lang/Object;
.source "SizeResolver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/size/SizeResolver$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcoil/size/SizeResolver$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    sget-object v0, Lcoil/size/SizeResolver$Companion;->$$INSTANCE:Lcoil/size/SizeResolver$Companion;

    sput-object v0, Lcoil/size/SizeResolver;->Companion:Lcoil/size/SizeResolver$Companion;

    return-void
.end method


# virtual methods
.method public abstract size(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method
