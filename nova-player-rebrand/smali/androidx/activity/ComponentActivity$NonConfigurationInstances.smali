.class public final Landroidx/activity/ComponentActivity$NonConfigurationInstances;
.super Ljava/lang/Object;
.source "ComponentActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/ComponentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NonConfigurationInstances"
.end annotation


# instance fields
.field private custom:Ljava/lang/Object;

.field private viewModelStore:Landroidx/lifecycle/ViewModelStore;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCustom()Ljava/lang/Object;
    .locals 1

    .line 130
    iget-object v0, p0, Landroidx/activity/ComponentActivity$NonConfigurationInstances;->custom:Ljava/lang/Object;

    return-object v0
.end method

.method public final getViewModelStore()Landroidx/lifecycle/ViewModelStore;
    .locals 1

    .line 131
    iget-object v0, p0, Landroidx/activity/ComponentActivity$NonConfigurationInstances;->viewModelStore:Landroidx/lifecycle/ViewModelStore;

    return-object v0
.end method

.method public final setCustom(Ljava/lang/Object;)V
    .locals 0

    .line 130
    iput-object p1, p0, Landroidx/activity/ComponentActivity$NonConfigurationInstances;->custom:Ljava/lang/Object;

    return-void
.end method

.method public final setViewModelStore(Landroidx/lifecycle/ViewModelStore;)V
    .locals 0

    .line 131
    iput-object p1, p0, Landroidx/activity/ComponentActivity$NonConfigurationInstances;->viewModelStore:Landroidx/lifecycle/ViewModelStore;

    return-void
.end method
