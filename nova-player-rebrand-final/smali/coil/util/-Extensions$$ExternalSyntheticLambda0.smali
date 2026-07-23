.class public final synthetic Lcoil/util/-Extensions$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lokhttp3/Call$Factory;


# instance fields
.field public final synthetic f$0:Lkotlin/Lazy;


# direct methods
.method public synthetic constructor <init>(Lkotlin/Lazy;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil/util/-Extensions$$ExternalSyntheticLambda0;->f$0:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final newCall(Lokhttp3/Request;)Lokhttp3/Call;
    .locals 1

    .line 0
    iget-object v0, p0, Lcoil/util/-Extensions$$ExternalSyntheticLambda0;->f$0:Lkotlin/Lazy;

    invoke-static {v0, p1}, Lcoil/util/-Extensions;->$r8$lambda$9KteUmWvBXSZdKTRS_kZqNI36mg(Lkotlin/Lazy;Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    return-object p1
.end method
