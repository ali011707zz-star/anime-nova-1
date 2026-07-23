.class public final Landroidx/activity/result/ActivityResultRegistry$register$2;
.super Landroidx/activity/result/ActivityResultLauncher;
.source "ActivityResultRegistry.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $contract:Landroidx/activity/result/contract/ActivityResultContract;

.field final synthetic $key:Ljava/lang/String;

.field final synthetic this$0:Landroidx/activity/result/ActivityResultRegistry;


# direct methods
.method constructor <init>(Landroidx/activity/result/ActivityResultRegistry;Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$register$2;->this$0:Landroidx/activity/result/ActivityResultRegistry;

    iput-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$register$2;->$key:Ljava/lang/String;

    iput-object p3, p0, Landroidx/activity/result/ActivityResultRegistry$register$2;->$contract:Landroidx/activity/result/contract/ActivityResultContract;

    .line 128
    invoke-direct {p0}, Landroidx/activity/result/ActivityResultLauncher;-><init>()V

    return-void
.end method


# virtual methods
.method public launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat;)V
    .locals 3

    .line 130
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$register$2;->this$0:Landroidx/activity/result/ActivityResultRegistry;

    invoke-static {v0}, Landroidx/activity/result/ActivityResultRegistry;->access$getKeyToRc$p(Landroidx/activity/result/ActivityResultRegistry;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Landroidx/activity/result/ActivityResultRegistry$register$2;->$key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidx/activity/result/ActivityResultRegistry$register$2;->$contract:Landroidx/activity/result/contract/ActivityResultContract;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 135
    iget-object v1, p0, Landroidx/activity/result/ActivityResultRegistry$register$2;->this$0:Landroidx/activity/result/ActivityResultRegistry;

    invoke-static {v1}, Landroidx/activity/result/ActivityResultRegistry;->access$getLaunchedKeys$p(Landroidx/activity/result/ActivityResultRegistry;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroidx/activity/result/ActivityResultRegistry$register$2;->$key:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :try_start_0
    iget-object v1, p0, Landroidx/activity/result/ActivityResultRegistry$register$2;->this$0:Landroidx/activity/result/ActivityResultRegistry;

    iget-object v2, p0, Landroidx/activity/result/ActivityResultRegistry$register$2;->$contract:Landroidx/activity/result/contract/ActivityResultContract;

    invoke-virtual {v1, v0, v2, p1, p2}, Landroidx/activity/result/ActivityResultRegistry;->onLaunch(ILandroidx/activity/result/contract/ActivityResultContract;Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 139
    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$register$2;->this$0:Landroidx/activity/result/ActivityResultRegistry;

    invoke-static {p2}, Landroidx/activity/result/ActivityResultRegistry;->access$getLaunchedKeys$p(Landroidx/activity/result/ActivityResultRegistry;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$register$2;->$key:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 140
    throw p1

    .line 131
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attempting to launch an unregistered ActivityResultLauncher with contract "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    const-string v0, " and input "

    .line 131
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    const-string p1, ". You must ensure the ActivityResultLauncher is registered before calling launch()."

    .line 131
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 130
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public unregister()V
    .locals 2

    .line 145
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$register$2;->this$0:Landroidx/activity/result/ActivityResultRegistry;

    iget-object v1, p0, Landroidx/activity/result/ActivityResultRegistry$register$2;->$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultRegistry;->unregister$activity_release(Ljava/lang/String;)V

    return-void
.end method
