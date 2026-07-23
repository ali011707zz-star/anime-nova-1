.class public interface abstract Lcoil/size/ViewSizeResolver;
.super Ljava/lang/Object;
.source "ViewSizeResolver.kt"

# interfaces
.implements Lcoil/size/SizeResolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/size/ViewSizeResolver$Companion;,
        Lcoil/size/ViewSizeResolver$DefaultImpls;
    }
.end annotation


# static fields
.field public static final Companion:Lcoil/size/ViewSizeResolver$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    sget-object v0, Lcoil/size/ViewSizeResolver$Companion;->$$INSTANCE:Lcoil/size/ViewSizeResolver$Companion;

    sput-object v0, Lcoil/size/ViewSizeResolver;->Companion:Lcoil/size/ViewSizeResolver$Companion;

    return-void
.end method


# virtual methods
.method public abstract getSubtractPadding()Z
.end method

.method public abstract getView()Landroid/view/View;
.end method
