.class public final synthetic Lcoil/EventListener$Factory$Companion$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcoil/EventListener$Factory;


# instance fields
.field public final synthetic f$0:Lcoil/EventListener;


# direct methods
.method public synthetic constructor <init>(Lcoil/EventListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil/EventListener$Factory$Companion$$ExternalSyntheticLambda0;->f$0:Lcoil/EventListener;

    return-void
.end method


# virtual methods
.method public final create(Lcoil/request/ImageRequest;)Lcoil/EventListener;
    .locals 1

    .line 0
    iget-object v0, p0, Lcoil/EventListener$Factory$Companion$$ExternalSyntheticLambda0;->f$0:Lcoil/EventListener;

    invoke-static {v0, p1}, Lcoil/EventListener$Factory$Companion;->$r8$lambda$C-6xa3wyJ6OYarey6id6r7qvp2Y(Lcoil/EventListener;Lcoil/request/ImageRequest;)Lcoil/EventListener;

    move-result-object p1

    return-object p1
.end method
