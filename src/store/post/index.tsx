import { createSlice } from '@reduxjs/toolkit';

import { useAppDispatch, useTypedSelector, Action, Slice, State } from '@store';
import { CommonEntity, PaginationQuery } from '@models';
import { PostType } from './type';

const name = 'Post';
const action = new Action<Post>(name);
export const postSlice = createSlice(new Slice<Post>(action));
export const PostFacade = () => {
  const dispatch = useAppDispatch();
  return {
    ...useTypedSelector((state) => state[action.name] as State<Post>),
    set: (values: State<Post>) => dispatch(action.set(values)),
    get: (params: PaginationQuery<Post>) => dispatch(action.get(params)),
    getById: ({ id, keyState = 'isVisible' }: { id: string; keyState?: keyof State<Post> }) =>
      dispatch(action.getById({ id, keyState })),
    post: (values: Post) => dispatch(action.post(values)),
    put: (values: Post) => dispatch(action.put(values)),
    delete: (id: string) => dispatch(action.delete(id)),
  };
};
export class Post extends CommonEntity {
  constructor(
    public type?: string,
    public thumbnailUrl?: string,
    public coverUrl?: string,
    public backGroundColor?: string,
    public titleForeColor?: string,
    public customCSSClass?: string,
    public customCSS?: string,
    public item?: PostType,
    public translations?: {
      language: string;
      name: string;
      description?: string;
      slug: string;
      seoTitle: string;
      seoDescription: string;
      content?: Record<string, object>;
      postId?: string;
      post?: Post;
    }[],
  ) {
    super();
  }
}
