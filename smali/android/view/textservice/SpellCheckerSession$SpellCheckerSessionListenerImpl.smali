.class Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;
.super Lcom/android/internal/textservice/ISpellCheckerSessionListener$Stub;
.source "SpellCheckerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textservice/SpellCheckerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpellCheckerSessionListenerImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;
    }
.end annotation


# static fields
.field private static final TASK_CANCEL:I = 0x1

.field private static final TASK_CLOSE:I = 0x3

.field private static final TASK_GET_SUGGESTIONS_MULTIPLE:I = 0x2

.field private static final TASK_GET_SUGGESTIONS_MULTIPLE_FOR_SENTENCE:I = 0x4


# instance fields
.field private mAsyncHandler:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private mISpellCheckerSession:Lcom/android/internal/textservice/ISpellCheckerSession;

.field private mOpened:Z

.field private final mPendingTasks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;",
            ">;"
        }
    .end annotation
.end field

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3
    .parameter "handler"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/textservice/ISpellCheckerSessionListener$Stub;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mOpened:Z

    iput-object p1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$300(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;Lcom/android/internal/textservice/ISpellCheckerSession;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;Z)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processTask(Lcom/android/internal/textservice/ISpellCheckerSession;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;Z)V

    return-void
.end method

.method private processOrEnqueueTask(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;)V
    .registers 7
    .parameter "scp"

    .prologue
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mISpellCheckerSession:Lcom/android/internal/textservice/ISpellCheckerSession;

    .local v1, session:Lcom/android/internal/textservice/ISpellCheckerSession;
    if-nez v1, :cond_30

    const/4 v0, 0x0

    .local v0, closeTask:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;
    iget v3, p1, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mWhat:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_22

    :cond_b
    :goto_b
    iget-object v3, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_22

    iget-object v3, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    .local v2, tmp:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;
    iget v3, v2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mWhat:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_b

    move-object v0, v2

    goto :goto_b

    .end local v2           #tmp:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;
    :cond_22
    iget-object v3, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    invoke-interface {v3, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    if-eqz v0, :cond_2e

    iget-object v3, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    invoke-interface {v3, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_2e
    monitor-exit p0

    .end local v0           #closeTask:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;
    :goto_2f
    return-void

    :cond_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_36

    const/4 v3, 0x0

    invoke-direct {p0, v1, p1, v3}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processTask(Lcom/android/internal/textservice/ISpellCheckerSession;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;Z)V

    goto :goto_2f

    .end local v1           #session:Lcom/android/internal/textservice/ISpellCheckerSession;
    :catchall_36
    move-exception v3

    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v3
.end method

.method private processTask(Lcom/android/internal/textservice/ISpellCheckerSession;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;Z)V
    .registers 8
    .parameter "session"
    .parameter "scp"
    .parameter "async"

    .prologue
    if-nez p3, :cond_6

    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mAsyncHandler:Landroid/os/Handler;

    if-nez v1, :cond_b5

    :cond_6
    iget v1, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mWhat:I

    packed-switch v1, :pswitch_data_c8

    :goto_b
    iget v1, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mWhat:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_27

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_12
    iput-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mISpellCheckerSession:Lcom/android/internal/textservice/ISpellCheckerSession;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_20

    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    :cond_20
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mAsyncHandler:Landroid/os/Handler;

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_c5

    :cond_27
    return-void

    :pswitch_28
    :try_start_28
    invoke-interface {p1}, Lcom/android/internal/textservice/ISpellCheckerSession;->onCancel()V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_b

    :catch_2c
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to cancel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_48
    :try_start_48
    iget-object v1, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mTextInfos:[Landroid/view/textservice/TextInfo;

    iget v2, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mSuggestionsLimit:I

    iget-boolean v3, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mSequentialWords:Z

    invoke-interface {p1, v1, v2, v3}, Lcom/android/internal/textservice/ISpellCheckerSession;->onGetSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_51} :catch_52

    goto :goto_b

    :catch_52
    move-exception v0

    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get suggestions "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_6e
    :try_start_6e
    iget-object v1, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mTextInfos:[Landroid/view/textservice/TextInfo;

    iget v2, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mSuggestionsLimit:I

    invoke-interface {p1, v1, v2}, Lcom/android/internal/textservice/ISpellCheckerSession;->onGetSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)V
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_75} :catch_76

    goto :goto_b

    :catch_76
    move-exception v0

    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get suggestions "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_93
    :try_start_93
    invoke-interface {p1}, Lcom/android/internal/textservice/ISpellCheckerSession;->onClose()V
    :try_end_96
    .catch Landroid/os/RemoteException; {:try_start_93 .. :try_end_96} :catch_98

    goto/16 :goto_b

    :catch_98
    move-exception v0

    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to close "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_b5
    iput-object p1, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mSession:Lcom/android/internal/textservice/ISpellCheckerSession;

    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mAsyncHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mAsyncHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-static {v2, v3, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_b

    :catchall_c5
    move-exception v1

    :try_start_c6
    monitor-exit p0
    :try_end_c7
    .catchall {:try_start_c6 .. :try_end_c7} :catchall_c5

    throw v1

    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_28
        :pswitch_48
        :pswitch_93
        :pswitch_6e
    .end packed-switch
.end method


# virtual methods
.method public cancel()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    new-instance v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;-><init>(I[Landroid/view/textservice/TextInfo;IZ)V

    invoke-direct {p0, v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processOrEnqueueTask(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;)V

    return-void
.end method

.method public close()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    new-instance v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;-><init>(I[Landroid/view/textservice/TextInfo;IZ)V

    invoke-direct {p0, v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processOrEnqueueTask(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;)V

    return-void
.end method

.method public getSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)V
    .registers 6
    .parameter "textInfos"
    .parameter "suggestionsLimit"

    .prologue
    new-instance v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;-><init>(I[Landroid/view/textservice/TextInfo;IZ)V

    invoke-direct {p0, v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processOrEnqueueTask(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;)V

    return-void
.end method

.method public getSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)V
    .registers 6
    .parameter "textInfos"
    .parameter "suggestionsLimit"
    .parameter "sequentialWords"

    .prologue
    new-instance v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1, p2, p3}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;-><init>(I[Landroid/view/textservice/TextInfo;IZ)V

    invoke-direct {p0, v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processOrEnqueueTask(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;)V

    return-void
.end method

.method public isDisconnected()Z
    .registers 2

    .prologue
    iget-boolean v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mOpened:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mISpellCheckerSession:Lcom/android/internal/textservice/ISpellCheckerSession;

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onGetSentenceSuggestions([Landroid/view/textservice/SentenceSuggestionsInfo;)V
    .registers 5
    .parameter "results"

    .prologue
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onGetSuggestions([Landroid/view/textservice/SuggestionsInfo;)V
    .registers 5
    .parameter "results"

    .prologue
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_11
    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public declared-synchronized onServiceConnected(Lcom/android/internal/textservice/ISpellCheckerSession;)V
    .registers 5
    .parameter "session"

    .prologue
    monitor-enter p0

    :try_start_1
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_1 .. :try_end_2} :catchall_46

    :try_start_2
    iput-object p1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mISpellCheckerSession:Lcom/android/internal/textservice/ISpellCheckerSession;

    invoke-interface {p1}, Lcom/android/internal/textservice/ISpellCheckerSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    instance-of v0, v0, Landroid/os/Binder;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_2d

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SpellCheckerSession"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$1;

    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$1;-><init>(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mAsyncHandler:Landroid/os/Handler;

    :cond_2d
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mOpened:Z

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_2 .. :try_end_31} :catchall_49

    :goto_31
    :try_start_31
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4c

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processTask(Lcom/android/internal/textservice/ISpellCheckerSession;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;Z)V
    :try_end_45
    .catchall {:try_start_31 .. :try_end_45} :catchall_46

    goto :goto_31

    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_49
    move-exception v0

    :try_start_4a
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    :try_start_4b
    throw v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_46

    :cond_4c
    monitor-exit p0

    return-void
.end method
