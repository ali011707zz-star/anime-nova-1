.class final Lcom/tfcporciuncula/flow/SharedPreferencesExtensionsKt$keyFlow$1$listener$1;
.super Ljava/lang/Object;
.source "SharedPreferencesExtensions.kt"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tfcporciuncula/flow/SharedPreferencesExtensionsKt$keyFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $this_callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/tfcporciuncula/flow/SharedPreferencesExtensionsKt$keyFlow$1$listener$1;->$this_callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 13
    iget-object p1, p0, Lcom/tfcporciuncula/flow/SharedPreferencesExtensionsKt$keyFlow$1$listener$1;->$this_callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-static {p1, p2}, Lcom/tfcporciuncula/flow/SharedPreferencesExtensionsKt;->access$offerCatching(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;)Z

    return-void
.end method
