.class public final Lcom/google/firebase/sessions/settings/LocalOverrideSettings_Factory;
.super Ljava/lang/Object;
.source "LocalOverrideSettings_Factory.java"

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
        "Lcom/google/firebase/sessions/settings/LocalOverrideSettings;",
        ">;"
    }
.end annotation


# instance fields
.field private final appContextProvider:Ljavax/inject/Provider;
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
    iput-object p1, p0, Lcom/google/firebase/sessions/settings/LocalOverrideSettings_Factory;->appContextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/google/firebase/sessions/settings/LocalOverrideSettings_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            ")",
            "Lcom/google/firebase/sessions/settings/LocalOverrideSettings_Factory;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/google/firebase/sessions/settings/LocalOverrideSettings_Factory;

    invoke-direct {v0, p0}, Lcom/google/firebase/sessions/settings/LocalOverrideSettings_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/google/firebase/sessions/settings/LocalOverrideSettings;
    .locals 1

    .line 38
    new-instance v0, Lcom/google/firebase/sessions/settings/LocalOverrideSettings;

    invoke-direct {v0, p0}, Lcom/google/firebase/sessions/settings/LocalOverrideSettings;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/firebase/sessions/settings/LocalOverrideSettings;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/firebase/sessions/settings/LocalOverrideSettings_Factory;->appContextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/sessions/settings/LocalOverrideSettings_Factory;->newInstance(Landroid/content/Context;)Lcom/google/firebase/sessions/settings/LocalOverrideSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/google/firebase/sessions/settings/LocalOverrideSettings_Factory;->get()Lcom/google/firebase/sessions/settings/LocalOverrideSettings;

    move-result-object v0

    return-object v0
.end method
