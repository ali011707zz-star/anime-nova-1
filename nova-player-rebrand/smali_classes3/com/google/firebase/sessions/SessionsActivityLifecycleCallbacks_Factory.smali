.class public final Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks_Factory;
.super Ljava/lang/Object;
.source "SessionsActivityLifecycleCallbacks_Factory.java"

# interfaces
.implements Lcom/google/firebase/sessions/dagger/internal/Factory;


# annotations
.annotation build Lcom/google/firebase/sessions/dagger/internal/DaggerGenerated;
.end annotation

.annotation build Lcom/google/firebase/sessions/dagger/internal/QualifierMetadata;
.end annotation

.annotation build Lcom/google/firebase/sessions/dagger/internal/ScopeMetadata;
    value = "javax.inject.Singleton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/sessions/dagger/internal/Factory<",
        "Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks;",
        ">;"
    }
.end annotation


# instance fields
.field private final sharedSessionRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks_Factory;->sharedSessionRepositoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            ")",
            "Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks_Factory;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks_Factory;

    invoke-direct {v0, p0}, Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/google/firebase/sessions/SharedSessionRepository;)Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks;
    .locals 1

    .line 40
    new-instance v0, Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks;

    invoke-direct {v0, p0}, Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks;-><init>(Lcom/google/firebase/sessions/SharedSessionRepository;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks_Factory;->sharedSessionRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/sessions/SharedSessionRepository;

    invoke-static {v0}, Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks_Factory;->newInstance(Lcom/google/firebase/sessions/SharedSessionRepository;)Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks_Factory;->get()Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks;

    move-result-object v0

    return-object v0
.end method
